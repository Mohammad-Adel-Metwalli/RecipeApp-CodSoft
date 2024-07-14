import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_image_body.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../Data/Repositories/Models/recipe_model.dart';

class RecipeImage extends StatelessWidget
{
  const RecipeImage({super.key, required this.recipes, required this.index,});
  final List<Recipe> recipes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: black, width: 3.5),
        ),
        child: RecipeImageBody(recipes: recipes, index: index),
      ),
    );
  }
}