import '../../../core/app_export.dart';

/// This class is used in the [powerquality_item_widget] screen.
class PowerqualityItemModel {
  PowerqualityItemModel({
    this.userImage,
    this.dynamicText,
    this.dynamicText1,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgLineBusinessMedalLine);
    dynamicText = dynamicText ?? Rx("0,78");
    dynamicText1 = dynamicText1 ?? Rx("Power Quality");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? dynamicText;

  Rx<String>? dynamicText1;

  Rx<String>? id;
}
