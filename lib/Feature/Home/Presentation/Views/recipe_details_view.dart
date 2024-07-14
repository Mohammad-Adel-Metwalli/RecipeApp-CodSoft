import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/Core/Utils/constant_colors.dart';
import 'package:recipe_app/Feature/Home/Data/Repositories/Models/recipe_model.dart';
import 'Widgets/recipe_details_view_body.dart';

class RecipeDetailsView extends StatelessWidget
{
  const RecipeDetailsView({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          leading: IconButton(
            onPressed: () => GoRouter.of(context).pop(),
            icon: Icon(Icons.chevron_left_rounded, color: black, size: 40.h),
          ),
        ),
        body: RecipeDetailsViewBody(recipe: recipe),
      ),
    );
  }
}