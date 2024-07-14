import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Home/Data/Repositories/Models/recipe_model.dart';
import '../../../../Home/Presentation/Views/Widgets/home_view_body_items.dart';

class SearchedRecipesList extends StatelessWidget
{
  const SearchedRecipesList({super.key, required this.recipes,});
  final List<Recipe> recipes;

  @override
  Widget build(BuildContext context)
  {
    return FadeInUpBig(
      child: ListView.builder(
        itemCount: recipes.length,
        padding: EdgeInsets.only(top: 110.h),
        itemBuilder: (context, index) => HomeViewBodyItems(index: index, recipes: recipes),
      ),
    );
  }
}