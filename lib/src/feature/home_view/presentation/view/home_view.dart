 import 'package:a_eye/src/feature/home_view/data/home_data.dart';
import 'package:a_eye/src/feature/home_view/widget/feature_card_option.dart';
import 'package:a_eye/src/share/res/app_string.dart';
import 'package:a_eye/src/share/res/styling.dart';
import 'package:a_eye/src/share/res/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset(AppString.appImage, width: screenAwareSize(100, context),),
        leading: IconButton(
        onPressed: (){}, 
        icon: const Icon(Icons.menu, color: Colors.black,)
        ),
        ),
          body: Container(
            height: screenHeight(context),
            width: screenWidth(context),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
        //      crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Align(
                  alignment: Alignment.topLeft,
                   child: Text(
                     '${HomeString.hello} 👋',
                     textAlign: TextAlign.start,
                             style: normalTextStyle(context).copyWith(
                               fontWeight: FontWeight.bold, fontSize: 22),),
                 ),
              UIHelper.verticalSpaceMedium,
              Text(HomeString.desc,
              textAlign: TextAlign.center, 
              style: normalTextStyle(context).copyWith(color: Colors.grey)
              ),
              UIHelper.verticalSpaceMedium,
              Text('Begin with a feature',
              style: normalTextStyle(context).copyWith(fontWeight: FontWeight.bold, fontSize: 18)
              ),
              UIHelper.verticalSpaceMedium,
              FeatureCard(
                img: HomeString.searchImg,
                label: HomeString.searchLabel,
                desc: HomeString.searchDesc,
              ),
               FeatureCard(
                img: HomeString.scanImage,
                label: HomeString.scanLabel,
                desc: HomeString.scanDesc,
              ),
               FeatureCard(
                img: HomeString.photoImage,
                label: HomeString.photoLabel,
                desc: HomeString.photoImage,
              ),
              FeatureCard(
                img: HomeString.catImage,
                label: HomeString.catLabel,
                desc: HomeString.catLabel,
              ),
                FeatureCard(
                img: HomeString.sketchImage,
                label: HomeString.sketchLabel,
                desc: HomeString.sketchDesc,
              ),
              ],
            )
      ));
    
    
  }
}

