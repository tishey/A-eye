


import 'package:a_eye/src/feature/intro_screen/data/onboarding_data.dart';
import 'package:a_eye/src/share/res/color.dart';
import 'package:a_eye/src/share/res/styling.dart';
import 'package:a_eye/src/share/res/ui_helper.dart';
import 'package:flutter/material.dart';

class OnBoardingWidget1 extends StatelessWidget {
  OnBoardingListClass onBoardingList = OnBoardingListClass();
 final  int index;
   OnBoardingWidget1({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Column(
    
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
       
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: Image.asset(
                    onBoardingList.onBoardingList[index].imgDescription,
                    width: screenAwareSize(350, context)
                    )),
          ),

            Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: Column(
             
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    onBoardingList.onBoardingList[index].title,
                    textAlign: TextAlign.center,
                    style: normalTextStyle(context).copyWith(
                      fontSize: screenAwareSize(28, context),
                      fontWeight: FontWeight.bold,
                      color: brandColor,
                    ),
                  ),
            //  addVerticalSpace(20),
                  Text(
                    onBoardingList.onBoardingList[index].descriptionText,
                    textAlign: TextAlign.center,
                    style: normalTextStyle(context).copyWith(
                      fontSize: screenAwareSize(23, context),
                      color: const Color(0xFF374957),
                    ),
                  ),
                ],
              ),
            ),
          ),
         
     

        ],
      ),
    );
  }
}