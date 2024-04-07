import 'package:code_land/infrastructure/constants/app_colors.dart';
import 'package:flutter/material.dart';

InputDecoration commonInputDecoration({
  required String hintText,
  Color fillColor = Colors.white,
  Color borderColor = Colors.grey,
  Color focusedBorderColor = AppColors.appThemeColor,
  Color hintTextColor = Colors.grey,
}) {
  return InputDecoration(
    filled: true,
    fillColor: fillColor,
    hintText: hintText,
    contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      borderSide: BorderSide(width: 1.5, color: borderColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      borderSide: BorderSide(width: 1.5, color: focusedBorderColor),
    ),
    hintStyle: TextStyle(color: hintTextColor),
  );
}
