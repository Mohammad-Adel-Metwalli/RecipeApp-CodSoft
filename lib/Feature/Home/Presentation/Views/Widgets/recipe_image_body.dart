import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_image_placeholder.dart';
import '../../../Data/Repositories/Models/recipe_model.dart';

class RecipeImageBody extends StatelessWidget
{
  const RecipeImageBody({super.key, required this.recipes, required this.index,});
  final List<Recipe> recipes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(22),
      child: CachedNetworkImage(
        imageUrl: recipes[index].image,
        placeholder: (context, _) => const RecipeImagePlaceholder(),
      ),
    );
  }
}