import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class RecipeDetailsRating extends StatelessWidget
{
  const RecipeDetailsRating({super.key, required this.recipeRating,});
  final double recipeRating;

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      bottom: 30.h,
      right: 20.w,
      child: Container(
        height: 50.h,
        width: 70.w,
        decoration: BoxDecoration(
          color: black.withOpacity(0.65),
          borderRadius: BorderRadius.circular(30),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.stars_sharp, color: amber),

            SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

            Text(recipeRating.toString(), style: Styles.styleFont14White),
          ],
        ),
      ),
    );
  }
}