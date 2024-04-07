import 'package:code_land/infrastructure/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ToastMsg {
  void showCustomSnackBar(BuildContext context, String message,
      {Color backgroundColor = AppColors.appThemeColor,
      int durationInSeconds = 2}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: backgroundColor,
        duration: Duration(seconds: durationInSeconds),
      ),
    );
  }
}
