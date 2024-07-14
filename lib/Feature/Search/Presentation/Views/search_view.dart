import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/Core/Utils/constant_colors.dart';
import 'package:recipe_app/Feature/Search/Presentation/Managers/search_recipes_cubit/search_recipes_cubit.dart';
import 'Widgets/search_view_body.dart';

class SearchView extends StatefulWidget
{
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView>
{
  String? searchedRecipe;

  @override
  void initState()
  {
    super.initState();
    BlocProvider.of<SearchRecipesCubit>(context).fetchSearchedRecipes(searchedRecipe: searchedRecipe ?? '');
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: SearchViewBody(searchedRecipe: searchedRecipe ?? ''),
      ),
    );
  }
}