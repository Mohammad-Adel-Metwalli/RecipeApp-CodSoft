import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Managers/Meals cubit/meals_cubit.dart';
import 'custom_shimmer_progress_indicator.dart';
import 'home_view_body_items.dart';

class HomeViewBody extends StatelessWidget
{
  const HomeViewBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return BlocBuilder<MealsCubit, MealsState>(
      builder: (context, state)
      {
        if (state is MealsSuccess)
        {
          return FadeInUpBig(
            duration: const Duration(seconds: 3),
            child: Center(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: state.recipes.length,
                padding: EdgeInsets.only(top: 105.h),
                itemBuilder: (context, index) => HomeViewBodyItems(recipes: state.recipes, index: index),
              ),
            ),
          );
        }

        else if (state is MealsFailure)
        {
          return Center(child: Text(state.errorMessage));
        }

        else
        {
          return FadeInUpBig(duration: const Duration(seconds: 3), child: const CustomShimmerProgressIndicator());
        }
      },
    );
  }
}