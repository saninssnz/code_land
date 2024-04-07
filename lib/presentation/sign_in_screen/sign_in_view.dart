import 'dart:convert';

import 'package:code_land/infrastructure/constants/app_colors.dart';
import 'package:code_land/infrastructure/constants/app_images.dart';
import 'package:code_land/infrastructure/constants/text_input_decoration.dart';
import 'package:code_land/infrastructure/widgets/toast.dart';
import 'package:code_land/presentation/image_upload_screen/image_upload_view.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/images/label.png",
                    width: 202,
                    height: 100,
                  ),
                  Image.memory(
                    base64Decode(appLogo),
                    width: 179,
                    height: 171,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    width: 202,
                    child: Column(
                      children: [
                        Text(
                          "Biomedical Kiosk",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "for HEC's",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: AppColors.appThemeColor),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    cursorColor: AppColors.appThemeColor,
                    controller: usernameController,
                    decoration: commonInputDecoration(hintText: 'Username'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    cursorColor: AppColors.appThemeColor,
                    controller: passwordController,
                    obscureText: true,
                    decoration: commonInputDecoration(hintText: 'Password'),
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (usernameController.text.isEmpty) {
                        ToastMsg()
                            .showCustomSnackBar(context, "Enter Username");
                      } else if (passwordController.text.isEmpty) {
                        ToastMsg()
                            .showCustomSnackBar(context, "Enter Password");
                      } else {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ImageUploadScreen()),
                            (Route<dynamic> route) => false);
                      }
                    },
                    height: 56.0,
                    minWidth: MediaQuery.of(context).size.width,
                    color: AppColors.appThemeColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    elevation: 5.0,
                    highlightElevation: 0,
                    child: const Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "For Assistance & Login Details Contact:",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("English, Kannada & Telungu : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  const Text(
                                    "7406333800",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: AppColors.appThemeColor,
                                    ),
                                  ),
                                  Positioned(
                                    bottom:
                                        0, // Adjust the position for desired spacing
                                    child: Container(
                                      height: 1, // Thickness of underline
                                      color: AppColors
                                          .appThemeColor, // Underline color
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("English, Kannada & Hindi      : ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: <Widget>[
                                  const Text(
                                    "9071386515",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: AppColors.appThemeColor,
                                    ),
                                  ),
                                  Positioned(
                                    bottom:
                                        0, // Adjust the position for desired spacing
                                    child: Container(
                                      height: 1, // Thickness of underline
                                      color: AppColors
                                          .appThemeColor, // Underline color
                                      width: MediaQuery.of(context).size.width,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const Text(
                    "v1.7 © 2023, Codeland Infosolution Pvt Ltd.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
