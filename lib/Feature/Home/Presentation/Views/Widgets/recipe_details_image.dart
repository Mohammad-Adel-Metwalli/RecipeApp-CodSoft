import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_image_placeholder.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class RecipeDetailsImage extends StatelessWidget
{
  const RecipeDetailsImage({super.key, required this.recipeImage,});
  final String recipeImage;

  @override
  Widget build(BuildContext context) => Padding(
    padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 5.w),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: black, width: 3.5),
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: CachedNetworkImage(
          imageUrl: recipeImage,
          placeholder: (context, _) => const RecipeImagePlaceholder(),
        ),
      ),
    ),
  );
}