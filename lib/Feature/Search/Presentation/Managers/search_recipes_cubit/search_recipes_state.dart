part of 'search_recipes_cubit.dart';

@immutable
sealed class SearchRecipesState {}

final class SearchRecipesInitial extends SearchRecipesState {}
final class SearchRecipesLoading extends SearchRecipesState {}
final class SearchRecipesSuccess extends SearchRecipesState
{
  final List<Recipe> recipes;

  SearchRecipesSuccess({required this.recipes});
}

final class SearchRecipesFailure extends SearchRecipesState
{
  final String errorMessage;

  SearchRecipesFailure({required this.errorMessage});
}