import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:recipe_app/Core/Utils/constant_colors.dart';
import 'package:recipe_app/Core/Utils/styles.dart';
import '../../Managers/search_recipes_cubit/search_recipes_cubit.dart';

Padding searchFieldBody({required BuildContext context, required String searchedRecipe}) =>
    Padding(
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 35.h),
      child: TextFormField(
        cursorColor: white,
        style: Styles.styleFont14White,
        controller: TextEditingController(text: searchedRecipe),
        onFieldSubmitted: (data)
        {
          searchedRecipe = data;
          BlocProvider.of<SearchRecipesCubit>(context).fetchSearchedRecipes(searchedRecipe: searchedRecipe);
        },
        onChanged: (data)
        {
          searchedRecipe = data;
          BlocProvider.of<SearchRecipesCubit>(context).fetchSearchedRecipes(searchedRecipe: searchedRecipe);
        },
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus,
        decoration: InputDecoration(
          label: Text('Search...', style: Styles.styleFont14White),
          suffixIcon: const Icon(HeroIcons.magnifying_glass, color: white),
          prefixIcon: IconButton(onPressed: () => GoRouter.of(context).pop(), icon: Icon(Icons.chevron_left_rounded, size: 30.h, color: white)),
          border: Styles.searchFieldDecoration(),
          focusedBorder: Styles.searchFieldDecoration(),
          enabledBorder: Styles.searchFieldDecoration(),
          disabledBorder: Styles.searchFieldDecoration(),
        ),
      ),
    );