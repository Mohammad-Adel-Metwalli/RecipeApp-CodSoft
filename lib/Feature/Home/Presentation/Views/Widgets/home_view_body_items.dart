import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/Core/Utils/constants.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_image.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_name.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_rating.dart';
import '../../../Data/Repositories/Models/recipe_model.dart';

class HomeViewBodyItems extends StatelessWidget
{
  const HomeViewBodyItems({super.key, required this.index, required this.recipes,});
  final List<Recipe> recipes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(context).push(recipeDetailsViewPath, extra: recipes[index]),
          child: RecipeImage(recipes: recipes, index: index),
        ),

        RecipeName(recipes: recipes, index: index),

        RecipeRating(recipes: recipes, index: index),
      ],
    );
  }
}