import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.textIN1,
    this.textEightHundredFive,
    this.textKw,
    this.textActivePower,
    this.textkW,
    this.textOneHundred,
    this.textSeventyFive,
    this.textFifty,
    this.textTwentyFive,
    this.imageVector1064,
    this.textZero,
    this.textFifteen,
    this.textThirty,
    this.textFortyFive,
    this.textSixty,
    this.textLast1Hour,
    this.id,
  }) {
    textIN1 = textIN1 ?? Rx("IN1");
    textEightHundredFive = textEightHundredFive ?? Rx("80,5");
    textKw = textKw ?? Rx("Kw");
    textActivePower = textActivePower ?? Rx("Active Power");
    textkW = textkW ?? Rx("kW");
    textOneHundred = textOneHundred ?? Rx("100");
    textSeventyFive = textSeventyFive ?? Rx("75");
    textFifty = textFifty ?? Rx("50");
    textTwentyFive = textTwentyFive ?? Rx("25");
    imageVector1064 = imageVector1064 ?? Rx(ImageConstant.imgVector1064);
    textZero = textZero ?? Rx("0");
    textFifteen = textFifteen ?? Rx("15");
    textThirty = textThirty ?? Rx("30");
    textFortyFive = textFortyFive ?? Rx("45");
    textSixty = textSixty ?? Rx("60");
    textLast1Hour = textLast1Hour ?? Rx("Last 1 hour");
    id = id ?? Rx("");
  }

  Rx<String>? textIN1;

  Rx<String>? textEightHundredFive;

  Rx<String>? textKw;

  Rx<String>? textActivePower;

  Rx<String>? textkW;

  Rx<String>? textOneHundred;

  Rx<String>? textSeventyFive;

  Rx<String>? textFifty;

  Rx<String>? textTwentyFive;

  Rx<String>? imageVector1064;

  Rx<String>? textZero;

  Rx<String>? textFifteen;

  Rx<String>? textThirty;

  Rx<String>? textFortyFive;

  Rx<String>? textSixty;

  Rx<String>? textLast1Hour;

  Rx<String>? id;
}
