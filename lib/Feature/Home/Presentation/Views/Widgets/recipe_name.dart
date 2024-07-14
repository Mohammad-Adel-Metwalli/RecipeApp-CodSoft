import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../Data/Repositories/Models/recipe_model.dart';

class RecipeName extends StatelessWidget
{
  const RecipeName({super.key, required this.recipes, required this.index,});
  final List<Recipe> recipes;
  final int index;

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      bottom: 30.h,
      left: 30.w,
      child: Container(
        height: 50.h,
        width: 250.w,
        decoration: BoxDecoration(
          color: black.withOpacity(0.65),
          borderRadius: BorderRadius.circular(25),
        ),

        child: Center(child: Text(recipes[index].name, style: Styles.styleFont14White, overflow: TextOverflow.ellipsis, maxLines: 1)),
      ),
    );
  }
}