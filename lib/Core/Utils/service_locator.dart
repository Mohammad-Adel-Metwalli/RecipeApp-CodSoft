import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:recipe_app/Core/Utils/api_service.dart';
import 'package:recipe_app/Feature/Search/Data/Repositories/search_repository_implementation.dart';
import '../../Feature/Home/Data/Repositories/home_repository_implementation.dart';

final getIt = GetIt.instance;
final getItSearch = GetIt.instance;

void setUpServiceLocator()
{
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepositoryImplementation>(HomeRepositoryImplementation(getIt.get<ApiService>()));
  getItSearch.registerSingleton<SearchRepositoryImplementation>(SearchRepositoryImplementation(getItSearch.get<ApiService>()));
}
