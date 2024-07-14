import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/cuisine_text_and_icon.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_details_image_body.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_ingredients.dart';
import 'package:recipe_app/Feature/Home/Presentation/Views/Widgets/recipe_instructions.dart';
import '../../../Data/Repositories/Models/recipe_model.dart';
import 'duration_text_and_icon.dart';
import 'ingredients_text_and_icon.dart';
import 'instructions_text_and_icon.dart';

class RecipeDetailsViewBody extends StatelessWidget
{
  const RecipeDetailsViewBody({super.key, required this.recipe,});
  final Recipe recipe;

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecipeDetailsImageBody(recipe: recipe),

          const IngredientsTextAndIcon(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

          Padding(
            padding: EdgeInsets.only(left: 35.w),
            child: RecipeIngredients(recipeIngredients: recipe.ingredients),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.025),

          const InstructionsTextAndIcon(),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

          Padding(
            padding: EdgeInsets.only(left: 35.w),
            child: RecipeInstructions(recipeInstructions: recipe.instructions),
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

          DurationTextAndIcon(durationType: 'Prepare time', duration: recipe.prepTimeMinutes.toString()),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

          DurationTextAndIcon(durationType: 'Cook time', duration: recipe.cookTimeMinutes.toString()),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

          CuisineTextAndIcon(cuisine: recipe.cuisine),
        ],
      ),
    );
  }
}