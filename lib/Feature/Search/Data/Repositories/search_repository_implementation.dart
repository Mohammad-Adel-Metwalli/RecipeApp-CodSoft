import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:recipe_app/Feature/Search/Data/Repositories/search_repository.dart';
import '../../../../Core/Errors/failures.dart';
import '../../../../Core/Utils/api_service.dart';
import '../../../Home/Data/Repositories/Models/recipe_model.dart';

class SearchRepositoryImplementation implements SearchRepository
{
  final ApiService apiService;
  SearchRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failures, List<Recipe>>> fetchSearchedRecipe({required String searchedRecipe}) async
  {
    try
    {
      var data = await apiService.get(endPoint: '?q=$searchedRecipe');

      List<Recipe> recipes = [];
      for (var item in data['recipes'])
      {
        recipes.add(Recipe.fromJson(item));
      }

      return right(recipes);
    }

    catch (error)
    {
      if (error is DioException)
      {
        return left(ServerFailures.fromDioError(error));
      }

      return left(ServerFailures(errorMessage: error.toString()));
    }
  }
}