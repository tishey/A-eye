
import 'package:a_eye/src/feature/home_view/presentation/view/home_view.dart';
import 'package:a_eye/src/feature/intro_screen/data/onboarding_data.dart';
import 'package:a_eye/src/feature/intro_screen/widget/onboarding_widget.dart';
import 'package:a_eye/src/share/res/app_string.dart';
import 'package:a_eye/src/share/res/button/a_aye_btn.dart';
import 'package:a_eye/src/share/res/color.dart';
import 'package:a_eye/src/share/res/function/navigate.dart';
import 'package:a_eye/src/share/res/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});


  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override

  late  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  int currentPage = 0;

  int numberOfPages = 3;

  late OnBoardingListClass ob;

  List<Widget> _buildIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < numberOfPages; i++) {
      list.add(i == currentPage ? indicator(true) : indicator(false));
    }
    return list;
  }

  Widget indicator(bool isActive) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: AnimatedContainer(
     //   margin: const EdgeInsets.only(left: 0),
        duration: const Duration(milliseconds: 200),
        height: 5,
        width: isActive ? 25 : 20,
        decoration: BoxDecoration(
          color: isActive ? brandColor : const Color(0xFFC4C4C4),
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Image.asset(AppString.appImage, width: screenAwareSize(100, context),),
      
          // )
          ),
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: 
            SizedBox(
              height: screenHeight(context),
              width: screenWidth(context),
              child: Column(
                children: [
                  previewWidget(),
                  UIHelper.verticalSpaceLarge,
                  UIHelper.horizontalSpaceMedium,
                    Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.only(bottom: 10.0, top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                      indicatorWidget(),
              UIHelper.verticalSpaceMedium,
              UIHelper.verticalSpaceMedium,
                 AEyeButton(
                   textColor: Colors.black,
                   onClick: ()=> navigateAndRemoveUntilRoute(context,  HomeView()),
                   label: 'Get Started')
                  
                  ],
                ),
              )
                ],
              ),
            ),
          
          
        
      ),
    );
  }

  Padding indicatorWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildIndicator(),
      ),
    );
  }

  Expanded previewWidget() {
    return Expanded(
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: PageView(
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            children: [
              OnBoardingWidget1(
                index: 0,
              ),
       
              OnBoardingWidget1(
                index: 1,
              ),
              OnBoardingWidget1(
                index: 2,
              ),

            ],
          ),
        ),
      ),
    );
  }

  Container backgroundImage(int index) {
    return Container(
      width: screenWidth(context),
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
              OnBoardingListClass().onBoardingList[index].imgDescription
              
              ),
        ),
      ),
    );
  }

  Container coloredBackground({double? width, Widget? child}) {
    return Container(
      color: Colors.white,
      width: screenWidth(context),
      height: double.infinity,
      child: child,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _buildIndicator();
    // previewCyclcer();
  }
}












































