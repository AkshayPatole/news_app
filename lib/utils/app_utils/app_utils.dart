
import '../../constants/app_enum.dart';
import '../../constants/app_images.dart';

String fetchIconFromAsset(assetName) {
  if (assetName == AppIcons.backArrow.name) {
    return AppImages.backArrow;
  } 
  // else if (assetName == AppIcons.forward.name) {
  //   return AppImages.forward;
  // }
  return '';
}
