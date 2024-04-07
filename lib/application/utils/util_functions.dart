import 'dart:async';
import 'dart:io';

import 'package:code_land/presentation/sign_in_screen/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UtilFunctions {
  Future<File?> pickImage() async {
    File? imageData;
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageData = File(pickedFile.path);
    }

    return imageData;
  }

  startTime(BuildContext context) async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const SignInScreen()),
          (Route<dynamic> route) => false);
    });
  }
}
