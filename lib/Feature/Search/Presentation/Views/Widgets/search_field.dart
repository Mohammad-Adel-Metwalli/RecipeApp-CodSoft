import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/Feature/Search/Presentation/Views/Widgets/search_field_body.dart';
import '../../../../../Core/Utils/constant_colors.dart';

class SearchField extends StatelessWidget
{
  const SearchField({super.key, required this.searchedRecipe,});
  final String searchedRecipe;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: mediumSlateBlue,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
      ),
      child: searchFieldBody(context: context, searchedRecipe: searchedRecipe),
    );
  }
}