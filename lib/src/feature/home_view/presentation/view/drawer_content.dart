 

import 'package:a_eye/src/feature/home_view/data/home_data.dart';
import 'package:a_eye/src/feature/home_view/widget/custom_swicth.dart';
import 'package:a_eye/src/feature/home_view/widget/setting_option.dart';
import 'package:a_eye/src/share/res/app_string.dart';
import 'package:a_eye/src/share/res/styling.dart';
import 'package:a_eye/src/share/res/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children:  [
           Image.asset(AppString.appImage,
        height: screenAwareSize(50, context),),
        ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign in / Sign up', 
              style: normalTextStyle(context).copyWith(fontWeight: FontWeight.bold, fontSize: 16),),
              Text('Sign in and synchronise your data',
               style: normalTextStyle(context).copyWith(fontSize: 12, color: Colors.grey))
            ],
          ),
          trailing:  Container(
            child: Image.asset(HomeString.fImage,
        height: screenAwareSize(50, context),),
        
          )
        ),
        Container(
          width: screenWidth(context),
          padding: const EdgeInsets.symmetric(horizontal: 20),
        ),
        SettingOption(
          img: HomeString.lImage,
          label: HomeString.lLabel,
        ),
        SettingOption(
          img: HomeString.senImage, 
          label: HomeString.senLabel
          ),
           SettingOption(
          img: HomeString.mesImage,
          label: HomeString.mesLabel
          ),
      
        UIHelper.verticalSpaceMedium,
         ListTile(
          leading:  Text('Dark Mode',  style: normalTextStyle(context).copyWith(fontWeight: FontWeight.bold)),
       //   trailing: SwitchControl(onChanged: (bool value) {newValue = value;},)
          // trailing: CustomSwitch(
          //     activeColor: Colors.pinkAccent,
          //     value: status,
          //     onChanged: (value) {
          //       print("VALUE : $value");
          //       setState(() {
          //         status = value;
          //       });
          //     },
          //   ),
        )
          ],
        ),
      );
  }
}

