import 'package:flutter/cupertino.dart';
import '../../../../../Core/Utils/constant_colors.dart';
import '../../../../../Core/Utils/styles.dart';

class DurationTextAndIcon extends StatelessWidget
{
  const DurationTextAndIcon({super.key, required this.duration, required this.durationType,});
  final String duration, durationType;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

      const Icon(CupertinoIcons.alarm_fill, color: activeBlue),

      SizedBox(width: MediaQuery.sizeOf(context).width * 0.015),

      Text('$durationType: $duration Minutes', style: Styles.styleFont20Black),
    ],
  );
}