import 'package:flutter/cupertino.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class InstructionsTextAndIcon extends StatelessWidget
{
  const InstructionsTextAndIcon({super.key,});

  @override
  Widget build(BuildContext context) => Row(
    children: [
      SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

      const Icon(CupertinoIcons.book_solid, color: orange),

      SizedBox(width: MediaQuery.sizeOf(context).width * 0.015),

      Text('Instructions', style: Styles.styleFont20Black),
    ],
  );
}