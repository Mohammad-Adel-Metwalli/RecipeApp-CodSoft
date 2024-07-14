import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:lottie/lottie.dart';
import 'package:recipe_app/Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/constants.dart';
import '../../../../../Core/Utils/styles.dart';

class CustomedHomeAppBarBody extends StatelessWidget
{
  const CustomedHomeAppBarBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        CircleAvatar(
          radius: 40.h,
          backgroundColor: white,
          child: Lottie.asset('Assets/Animations/Animation - 1720028532619.json', height: 70.h),
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.02),

        Text('Recipe App', style: Styles.styleFont20White),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.35),

        IconButton(
          onPressed: () => GoRouter.of(context).push(searchViewPath),
          splashColor: white,
          icon: Icon(HeroIcons.magnifying_glass, size: 30.h, color: white),
        ),
      ],
    );
  }
}