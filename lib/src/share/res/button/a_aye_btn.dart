import 'package:a_eye/src/share/res/color.dart';
import 'package:a_eye/src/share/res/styling.dart';
import 'package:a_eye/src/share/res/ui_helper.dart';
import 'package:flutter/material.dart';



class AEyeButton extends StatelessWidget {
  final VoidCallback onClick;
  final String label;
  final double? width;
  final double? height;
  final Color? textColor;
  final Color background;
  final Function? onTap;
  const AEyeButton(
      {Key? key,
      required this.onClick,
      required this.label,
      this.width,
      this.height,
      this.background = appBrandColorFunction,
      this.textColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenAwareSize(80, context),
      width: width,
      child: MaterialButton(
          height: screenAwareSize(80, context),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        //  disabledColor: appBrandColorFunction,
          color: appBrandColorFunction,
          onPressed: onClick,
          child: Center(
            child: Text(label,
                style: normalTextStyle(context).copyWith(
                  color: textColor ?? Colors.white,
                  fontSize: screenAwareSize(28, context),
                )),
          )),
    );
  }
}
