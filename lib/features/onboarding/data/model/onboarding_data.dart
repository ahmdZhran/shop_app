import '../../../../core/utils/app_assets.dart';

class OnBoardingData {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingData(
      {required this.image, required this.title, required this.subTitle});
}

List<OnBoardingData> onBoardingData = [
  OnBoardingData(
      image: AppAssets.imageOnBoarding,
      title: 'Discover Our Products',
      subTitle:
          'Browse thousands of products, from fashion to tech. Find what you love, effortlessly.'),
  OnBoardingData(
    image: AppAssets.imageOnBoarding1,
    title: 'Hassle-Free Checkout',
    subTitle:
        'Seamless payments and speedy delivery. Start shopping smarter today.',
  ),
  OnBoardingData(
    image: AppAssets.imageOnBoarding2,
    title: 'Easy and Happy Shopping',
    subTitle: "Start shopping now and enjoy a world of convenience!",
  ),
];
