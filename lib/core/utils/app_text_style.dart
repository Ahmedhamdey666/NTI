import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/app_colors.dart';

abstract class AppTextStyles
{
  static const String fontFamily = "Lexend Deca";
  static TextStyle x = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: AppColors.black
  );
  static TextStyle taskTitleData = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.grey
  );

  static var cardTextStyle;
}




