import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/custom_shimmer_progress_indicator.dart';
import 'package:recipe_app/Feature/Search/Presentation/Managers/search_recipes_cubit/search_recipes_cubit.dart';
import 'package:recipe_app/Feature/Search/Presentation/Views/Widgets/search_field.dart';
import 'package:recipe_app/Feature/Search/Presentation/Views/Widgets/searched_recipes_list.dart';

class SearchViewBody extends StatelessWidget
{
  const SearchViewBody({super.key, required this.searchedRecipe,});
  final String searchedRecipe;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        BlocBuilder<SearchRecipesCubit, SearchRecipesState>(
          builder: (context, state)
          {
            if(state is SearchRecipesSuccess)
            {
              return SearchedRecipesList(recipes: state.recipes);
            }

            else if(state is SearchRecipesFailure)
            {
              return const Center(child: Text('Try to search to get a list of recipes🍕'));
            }

            else
            {
              return FadeInUpBig(duration: const Duration(seconds: 3), child: const CustomShimmerProgressIndicator());
            }
          },
        ),

        SearchField(searchedRecipe: searchedRecipe),
      ],
    );
  }
}