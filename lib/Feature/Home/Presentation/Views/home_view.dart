import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/Core/Utils/constant_colors.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/customed_home_app_bar.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatelessWidget
{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Stack(
          children: [
            const HomeViewBody(),

            FadeInDownBig(child: const CustomedHomeAppBar()),
          ],
        ),
      ),
    );
  }
}