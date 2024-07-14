import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/Core/Utils/service_locator.dart';
import 'package:recipe_app/Feature/Home/Data/Repositories/Models/recipe_model.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/home_view.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/recipe_details_view.dart';
import 'package:recipe_app/Feature/Search/Data/Repositories/search_repository_implementation.dart';
import 'package:recipe_app/Feature/Search/Presentation/Managers/search_recipes_cubit/search_recipes_cubit.dart';
import 'package:recipe_app/Feature/Search/Presentation/Views/search_view.dart';
import '../../Feature/Home/Data/Repositories/home_repository_implementation.dart';
import '../../Feature/Home/Presentation/Managers/Meals cubit/meals_cubit.dart';
import 'constants.dart';

abstract class AppRouter
{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) => MealsCubit(getIt.get<HomeRepositoryImplementation>())..fetchAllMeals(),
          child: const HomeView(),
        ),
      ),

      GoRoute(
        path: recipeDetailsViewPath,
        builder: (context, state) => RecipeDetailsView(recipe: state.extra as Recipe),
      ),

      GoRoute(
        path: searchViewPath,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchRecipesCubit(getItSearch.get<SearchRepositoryImplementation>()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}