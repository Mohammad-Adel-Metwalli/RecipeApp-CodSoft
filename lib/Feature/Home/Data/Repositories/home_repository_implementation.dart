import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:recipe_app/Core/Errors/failures.dart';
import 'package:recipe_app/Feature/Home/Data/Repositories/Models/recipe_model.dart';
import 'package:recipe_app/Feature/Home/Data/Repositories/home_repository.dart';
import '../../../../Core/Utils/api_service.dart';

class HomeRepositoryImplementation implements HomeRepository
{
  final ApiService apiService;
  HomeRepositoryImplementation(this.apiService);

  @override
  Future<Either<Failures, List<Recipe>>> fetchAllMeals() async
  {
    try
    {
      var data = await apiService.get(endPoint: '?q');

      List<Recipe> recipes = [];
      for (var recipe in data['recipes'])
      {
        try
        {
          recipes.add(Recipe.fromJson(recipe));
        }

        catch(e)
        {
          recipes.add(Recipe.fromJson(recipe));
        }
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