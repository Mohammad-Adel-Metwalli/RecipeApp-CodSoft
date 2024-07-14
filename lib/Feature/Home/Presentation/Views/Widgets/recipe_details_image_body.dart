import 'package:flutter/material.dart';
import 'package:recipe_app/Feature/Home/Data/Repositories/Models/recipe_model.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_details_image.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_details_name.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_details_rating.dart';

class RecipeDetailsImageBody extends StatelessWidget
{
  const RecipeDetailsImageBody({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        RecipeDetailsImage(recipeImage: recipe.image),

        RecipeDetailsName(recipeName: recipe.name),

        RecipeDetailsRating(recipeRating: recipe.rating),
      ],
    );
  }
}