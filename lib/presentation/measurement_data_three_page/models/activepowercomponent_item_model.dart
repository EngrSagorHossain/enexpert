import '../../../core/app_export.dart';

/// This class is used in the [activepowercomponent_item_widget] screen.
class ActivepowercomponentItemModel {
  ActivepowercomponentItemModel({
    this.activePowerImage,
    this.activePowerValue,
    this.activePowerUnit,
    this.activePowerText,
    this.id,
  }) {
    activePowerImage =
        activePowerImage ?? Rx(ImageConstant.imgLineWeatherFlashlightLine);
    activePowerValue = activePowerValue ?? Rx("120,5");
    activePowerUnit = activePowerUnit ?? Rx("Kw");
    activePowerText = activePowerText ?? Rx("Active Power");
    id = id ?? Rx("");
  }

  Rx<String>? activePowerImage;

  Rx<String>? activePowerValue;

  Rx<String>? activePowerUnit;

  Rx<String>? activePowerText;

  Rx<String>? id;
}
