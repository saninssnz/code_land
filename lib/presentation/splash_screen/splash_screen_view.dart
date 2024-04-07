import 'dart:async';
import 'dart:convert';

import 'package:code_land/application/utils/util_functions.dart';
import 'package:code_land/infrastructure/constants/app_colors.dart';
import 'package:code_land/infrastructure/constants/app_images.dart';
import 'package:code_land/presentation/sign_in_screen/sign_in_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    UtilFunctions().startTime(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appThemeColor,
      body: Center(
        child: Container(
          height: 320,
          width: 224,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(0.5), // Shadow color with some transparency
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(0,
                  4), // changes position of shadow, x-axis and y-axis respectively
            ),
          ], color: Colors.white, borderRadius: BorderRadius.circular(60)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.memory(
                  base64Decode(appLogo),
                  width: 180,
                  height: 180,
                ),
              ),
              Image.asset(
                "assets/images/label.png",
                width: 144,
                height: 91,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
