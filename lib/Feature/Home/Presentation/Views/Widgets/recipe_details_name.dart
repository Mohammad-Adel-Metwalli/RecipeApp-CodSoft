import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class RecipeDetailsName extends StatelessWidget
{
  const RecipeDetailsName({super.key, required this.recipeName,});
  final String recipeName;

  @override
  Widget build(BuildContext context)
  {
    return Positioned(
      bottom: 30.h,
      left: 20.w,
      child: Container(
        height: 50.h,
        width: 250.w,
        decoration: BoxDecoration(
          color: black.withOpacity(0.65),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(child: Text(recipeName, style: Styles.styleFont14White, overflow: TextOverflow.ellipsis, maxLines: 1)),
      ),
    );
  }
}