

import 'package:a_eye/src/share/res/styling.dart';
import 'package:a_eye/src/share/res/ui_helper.dart';
import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {

final String img;
final String label;
const SettingOption({super.key, required this.img, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: Image.asset(img,
    height: screenAwareSize(50, context),),
    title: Text(label,
    style: normalTextStyle(context).copyWith(fontWeight: FontWeight.bold),),
    );
  }
}