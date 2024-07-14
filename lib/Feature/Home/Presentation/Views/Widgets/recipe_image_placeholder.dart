import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class RecipeImagePlaceholder extends StatelessWidget
{
  const RecipeImagePlaceholder({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Shimmer.fromColors(
      baseColor: grey[500]!,
      highlightColor: grey[100]!,
      child: Container(
        height: 382.h,
        width: 500.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: white),
      ),
    );
  }
}