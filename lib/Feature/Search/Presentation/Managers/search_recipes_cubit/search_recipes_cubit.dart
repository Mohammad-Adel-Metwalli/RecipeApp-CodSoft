import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/Feature/Search/Data/Repositories/search_repository.dart';
import '../../../../Home/Data/Repositories/Models/recipe_model.dart';
part 'search_recipes_state.dart';

class SearchRecipesCubit extends Cubit<SearchRecipesState>
{
  SearchRecipesCubit(this.searchRepository) : super(SearchRecipesInitial());
  final SearchRepository searchRepository;

  Future<void> fetchSearchedRecipes({required String searchedRecipe}) async
  {
    emit(SearchRecipesLoading());
    var result = await searchRepository.fetchSearchedRecipe(searchedRecipe: searchedRecipe);

    result.fold((failure) => emit(SearchRecipesFailure(errorMessage: failure.errorMessage)), (recipes) => emit(SearchRecipesSuccess(recipes: recipes)));
  }
}