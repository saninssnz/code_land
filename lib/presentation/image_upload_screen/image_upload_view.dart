import 'dart:convert';
import 'dart:io';
import 'package:code_land/application/utils/util_functions.dart';
import 'package:code_land/infrastructure/constants/app_colors.dart';
import 'package:code_land/infrastructure/constants/app_images.dart';
import 'package:code_land/infrastructure/widgets/dotted_line_border.dart';
import 'package:code_land/infrastructure/widgets/toast.dart';
import 'package:flutter/material.dart';

class ImageUploadScreen extends StatefulWidget {
  const ImageUploadScreen({super.key});

  @override
  State<ImageUploadScreen> createState() => _ImageUploadScreenState();
}

class _ImageUploadScreenState extends State<ImageUploadScreen> {
  File? _image;
  bool isViewImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Upload a Image",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 30,
              ),
              Flexible(
                child: SizedBox(
                  width: double.infinity,
                  child: CustomPaint(
                    painter: DottedLinePainter(),
                    child: !isViewImage
                        ? Center(
                            child: Image.memory(
                              base64Decode(imageUploadLogo),
                              width: 100,
                              height: 100,
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.file(_image!,
                                fit: BoxFit.fill,
                                width: MediaQuery.sizeOf(context).width,
                                height: MediaQuery.sizeOf(context).height),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      UtilFunctions().pickImage().then((value) {
                        setState(() {
                          _image = value;
                        });
                      });
                    },
                    height: 35.0,
                    minWidth: 119,
                    color: AppColors.appThemeColor,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    elevation: 5.0,
                    highlightElevation: 0,
                    child: const Text(
                      "Upload",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (_image != null) {
                        setState(() {
                          isViewImage = true;
                        });
                      } else {
                        ToastMsg()
                            .showCustomSnackBar(context, "Upload an Image");
                      }
                    },
                    height: 35.0,
                    minWidth: 119,
                    color: AppColors.appButtonGreyColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    elevation: 5.0,
                    highlightElevation: 0,
                    child: const Text(
                      "View",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
