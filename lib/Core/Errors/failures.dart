import 'package:dio/dio.dart';

abstract class Failures {
  final String errorMessage;

  Failures({required this.errorMessage});
}

class ServerFailures extends Failures {
  ServerFailures({required super.errorMessage});

  factory ServerFailures.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailures(errorMessage: 'Connection timed out');

      case DioExceptionType.sendTimeout:
        return ServerFailures(errorMessage: 'Send timed out');

      case DioExceptionType.receiveTimeout:
        return ServerFailures(errorMessage: 'Receive timed out');

      case DioExceptionType.badResponse:
        return ServerFailures.fromResponse(
            error.response!.statusCode!, error.response!.data);

      case DioExceptionType.cancel:
        return ServerFailures(errorMessage: 'The request has been cancelled');

      case DioExceptionType.connectionError:
        return ServerFailures(errorMessage: 'Check out your connection');

      case DioExceptionType.unknown:
        if (error.message != null &&
            error.message!.contains('SocketException')) {
          return ServerFailures(errorMessage: 'No internet connection');
        }

        return ServerFailures(
            errorMessage: 'Unexpected error, Please tyr again later');

      case DioExceptionType.badCertificate:
        return ServerFailures(
            errorMessage: 'Incorrect certificate, Please tyr again later');

      default:
        return ServerFailures(
            errorMessage: 'Oops there is an error, Please try again');
    }
  }

  factory ServerFailures.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailures(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailures(
          errorMessage:
              'Your request isn\'t found, Please try again later, $response');
    } else if (statusCode == 500) {
      return ServerFailures(
          errorMessage: 'Internal server error, Please try again later');
    } else {
      return ServerFailures(
          errorMessage: 'Oops there is an error, Please try again');
    }
  }
}
