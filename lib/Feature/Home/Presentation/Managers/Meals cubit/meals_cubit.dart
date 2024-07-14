import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/Feature/Home/Data/Repositories/Models/recipe_model.dart';
import 'package:recipe_app/Feature/Home/Data/Repositories/home_repository.dart';
part 'meals_state.dart';

class MealsCubit extends Cubit<MealsState>
{
  MealsCubit(this.homeRepository) : super(MealsInitial());
  final HomeRepository homeRepository;

  Future<void> fetchAllMeals() async
  {
    emit(MealsLoading());
    var result = await homeRepository.fetchAllMeals();

    result.fold((failure) => emit(MealsFailure(errorMessage: failure.errorMessage)), (recipes) => emit(MealsSuccess(recipes: recipes)));
  }
}
