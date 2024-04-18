import 'package:get/get.dart';
import '../../../core/constant/image_asset.dart';
import '../../model/onboarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "titleOnBoBuying".tr, body: "bodyOnBoBuying".tr, image: AppImageAsset.onBoardingImageBuyingCar),
  OnBoardingModel(
      title: "titleOnBoSelling".tr, body: "bodyOnBoSelling".tr, image: AppImageAsset.onBoardingImageSellingCar),
  OnBoardingModel(
      title: "titleOnBoRental".tr, body: "bodyOnBoRental".tr, image: AppImageAsset.onBoardingImageRentalCar),
       OnBoardingModel(
      title: "titleOnBoMaintenance".tr, body: "bodyOnBoMaintenance".tr, image: AppImageAsset.onBoardingImageMaintenance),
       OnBoardingModel(
      title: "titleOnBoMotorcycle".tr, body: "bodyOnBoMotorcycle".tr, image: AppImageAsset.onBoardingImageMotorcycle),

];