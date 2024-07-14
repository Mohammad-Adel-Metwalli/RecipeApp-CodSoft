import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class IngredientsTextAndIcon extends StatelessWidget
{
  const IngredientsTextAndIcon({super.key,});

  @override
  Widget build(BuildContext context) => Row(
    children: [
      SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

      const Icon(IonIcons.fast_food, color: orange),

      SizedBox(width: MediaQuery.sizeOf(context).width * 0.015),

      Text('Ingredients', style: Styles.styleFont20Black),
    ],
  );
}