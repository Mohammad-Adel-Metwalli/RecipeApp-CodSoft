import 'package:dartz/dartz.dart';
import '../../../../Core/Errors/failures.dart';
import '../../../Home/Data/Repositories/Models/recipe_model.dart';

abstract class SearchRepository
{
  Future<Either<Failures, List<Recipe>>> fetchSearchedRecipe({required String searchedRecipe});
}