import '../../../core/app_export.dart';
import 'powerquality_item_model.dart';

/// This class is used in the [powermetrics_item_widget] screen.
class PowermetricsItemModel {
  PowermetricsItemModel({
    this.activePowerValue,
    this.activePowerUnit,
    this.activePowerLabel,
    this.apparentPowerValue,
    this.apparentPowerUnit,
    this.apparentPowerLabel,
    this.powerqualityItemList,
    this.id,
    required RxString dynamicText,
    required RxString dynamicText1,
    required RxString v1Value,
    required RxString v1Label,
    required RxString v2Value,
    required RxString v2Label,
    required RxString v3Value,
    required RxString v3Label,
  }) {
    activePowerValue = activePowerValue ?? Rx("120,5");
    activePowerUnit = activePowerUnit ?? Rx("Kw");
    activePowerLabel = activePowerLabel ?? Rx("Active Power");
    apparentPowerValue = apparentPowerValue ?? Rx("125");
    apparentPowerUnit = apparentPowerUnit ?? Rx("Kw");
    apparentPowerLabel = apparentPowerLabel ?? Rx("Apparent Power");
    powerqualityItemList = powerqualityItemList ??
        Rx([
          PowerqualityItemModel(
              userImage: ImageConstant.imgLineBusinessMedalLine.obs,
              dynamicText: "0,78".obs,
              dynamicText1: "Power Quality".obs),
          PowerqualityItemModel(
              userImage: ImageConstant.imgLineDeviceWir.obs,
              dynamicText: "130,58".obs,
              dynamicText1: "V1".obs),
          PowerqualityItemModel(
              userImage: ImageConstant.imgLineDeviceWir.obs,
              dynamicText: "120,78".obs,
              dynamicText1: "V2".obs),
          PowerqualityItemModel(
              userImage: ImageConstant.imgLineDeviceWir.obs,
              dynamicText: "126,48".obs,
              dynamicText1: "V3".obs),
        ]);
    id = id ?? Rx("");
  }

  Rx<String>? activePowerValue;

  Rx<String>? activePowerUnit;

  Rx<String>? activePowerLabel;

  Rx<String>? apparentPowerValue;

  Rx<String>? apparentPowerUnit;

  Rx<String>? apparentPowerLabel;

  Rx<List<PowerqualityItemModel>>? powerqualityItemList;

  Rx<String>? id;
}
