import 'package:flutter/material.dart';
import '../../../../../Core/Utils/styles.dart';

class RecipeIngredients extends StatelessWidget
{
  const RecipeIngredients({super.key, required this.recipeIngredients,});
  final List<String> recipeIngredients;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(recipeIngredients.length, (index) => Text('${index+1}- ${recipeIngredients[index]}', style: Styles.styleFont14Black)),
  );
}