import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constant_colors.dart';

abstract class Styles
{
  static final styleFont14White = TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 14.sp);
  static final styleFont14Black = TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 14.sp);
  static final styleFont20White = TextStyle(color: white, fontWeight: FontWeight.bold, fontSize: 20.sp);
  static final styleFont20Black = TextStyle(color: black, fontWeight: FontWeight.bold, fontSize: 20.sp);
  static OutlineInputBorder searchFieldDecoration() => OutlineInputBorder(borderRadius: BorderRadius.circular(25), borderSide: const BorderSide(color: white, width: 3.5));
}