import 'package:flutter/material.dart';
import '../../../../../Core/Utils/styles.dart';

class RecipeInstructions extends StatelessWidget
{
  const RecipeInstructions({super.key, required this.recipeInstructions,});
  final List<String> recipeInstructions;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: List.generate(recipeInstructions.length, (index) => Text('${index+1}- ${recipeInstructions[index]}', style: Styles.styleFont14Black)),
  );
}