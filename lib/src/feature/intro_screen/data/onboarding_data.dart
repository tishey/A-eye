



class OnBoardingData {
  String imgDescription;
  String descriptionText;
  String title;
  OnBoardingData(
      {required this.imgDescription,
      required this.descriptionText,
      required this.title});
}

class OnBoardingListClass {
  String returnbk(int index) {
    return "assets/images/onboarding${index + 1}.png";
  }

  List<OnBoardingData> onBoardingList = [
    OnBoardingData(
      imgDescription: "asset/images/onboarding.png",
      title: "Scan Barcode and QR code",
      descriptionText: "Scan or search barcodes using your camera or presaved image",
    ),
    OnBoardingData(
        imgDescription: "asset/images/onboarding.png",
      title: "Confirm objects or items",
      descriptionText: "Confirm varity of things using your camera or presaved images",
    ),
    
    OnBoardingData(
        imgDescription: "asset/images/onboarding.png",
      title: 'Confrim Files to Text',
      descriptionText: "Convert images of documents to a text and so much more",
    ),

  ];
}
