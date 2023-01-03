


import 'package:a_eye/src/share/res/ui_helper.dart';
import 'package:flutter/material.dart';

TextStyle smallTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: UIHelper.kSmallFont,
    fontFamily: "Poppins");
TextStyle normalTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: UIHelper.kMediumFont,
    fontFamily: "Poppins");

TextStyle bigTextStyle(BuildContext? context) => const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: UIHelper.kLargeFont,
    fontFamily: "Poppins");