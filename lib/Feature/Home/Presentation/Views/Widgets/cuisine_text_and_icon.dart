import 'package:flutter/cupertino.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class CuisineTextAndIcon extends StatelessWidget
{
  const CuisineTextAndIcon({super.key, required this.cuisine,});
  final String cuisine;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

      const Icon(CupertinoIcons.location_solid, color: activeBlue),

      SizedBox(width: MediaQuery.sizeOf(context).width * 0.015),

      Text('Cuisine: $cuisine', style: Styles.styleFont20Black),
    ],
  );
}