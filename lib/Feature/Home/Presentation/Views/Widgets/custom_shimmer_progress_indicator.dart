import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class CustomShimmerProgressIndicator extends StatelessWidget
{
  const CustomShimmerProgressIndicator({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 110.h),
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: grey[500]!,
          highlightColor: grey[100]!,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            child: Container(
              height: 382.h,
              width: 250.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: white),
            ),
          ),
        ),
      ),
    );
  }
}