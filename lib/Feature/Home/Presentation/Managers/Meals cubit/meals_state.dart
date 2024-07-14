part of 'meals_cubit.dart';

@immutable
sealed class MealsState {}

final class MealsInitial extends MealsState {}

final class MealsSuccess extends MealsState {
  final List<Recipe> recipes;

  MealsSuccess({required this.recipes});
}

final class MealsLoading extends MealsState {}

final class MealsFailure extends MealsState {
  final String errorMessage;

  MealsFailure({required this.errorMessage});
}
