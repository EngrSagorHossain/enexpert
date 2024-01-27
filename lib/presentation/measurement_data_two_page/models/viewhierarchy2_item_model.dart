import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy2_item_widget] screen.
class Viewhierarchy2ItemModel {
  Viewhierarchy2ItemModel({
    this.textIN1,
    this.textFortyEight,
    this.textH,
    this.textFrequency,
    this.textH1,
    this.textEighty,
    this.textSixty,
    this.textForty,
    this.textTwenty,
    this.imageVector1064,
    this.textZero,
    this.textFifteen,
    this.textThirty,
    this.textFortyFive,
    this.textSixty1,
    this.textLast1Hour,
    this.id,
  }) {
    textIN1 = textIN1 ?? Rx("IN1");
    textFortyEight = textFortyEight ?? Rx("48");
    textH = textH ?? Rx("H");
    textFrequency = textFrequency ?? Rx("Frequency");
    textH1 = textH1 ?? Rx("H");
    textEighty = textEighty ?? Rx("80");
    textSixty = textSixty ?? Rx("60");
    textForty = textForty ?? Rx("40");
    textTwenty = textTwenty ?? Rx("20");
    imageVector1064 =
        imageVector1064 ?? Rx(ImageConstant.imgVector1064Primary36x152);
    textZero = textZero ?? Rx("0");
    textFifteen = textFifteen ?? Rx("15");
    textThirty = textThirty ?? Rx("30");
    textFortyFive = textFortyFive ?? Rx("45");
    textSixty1 = textSixty1 ?? Rx("60");
    textLast1Hour = textLast1Hour ?? Rx("Last 1 hour");
    id = id ?? Rx("");
  }

  Rx<String>? textIN1;

  Rx<String>? textFortyEight;

  Rx<String>? textH;

  Rx<String>? textFrequency;

  Rx<String>? textH1;

  Rx<String>? textEighty;

  Rx<String>? textSixty;

  Rx<String>? textForty;

  Rx<String>? textTwenty;

  Rx<String>? imageVector1064;

  Rx<String>? textZero;

  Rx<String>? textFifteen;

  Rx<String>? textThirty;

  Rx<String>? textFortyFive;

  Rx<String>? textSixty1;

  Rx<String>? textLast1Hour;

  Rx<String>? id;
}
