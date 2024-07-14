import 'package:dartz/dartz.dart';
import 'package:recipe_app/Core/Errors/failures.dart';
import 'Models/recipe_model.dart';

abstract class HomeRepository
{
  Future<Either<Failures, List<Recipe>>> fetchAllMeals();
}