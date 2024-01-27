import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.textIN1,
    this.textEightyEight,
    this.textCos,
    this.textCosPhi,
    this.textCos1,
    this.textOne,
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
    textEightyEight = textEightyEight ?? Rx("0,88");
    textCos = textCos ?? Rx("Cos ϕ");
    textCosPhi = textCosPhi ?? Rx("Cos Phi");
    textCos1 = textCos1 ?? Rx("Cos ϕ");
    textOne = textOne ?? Rx("1");
    textSeventyFive = textSeventyFive ?? Rx("0,75");
    textFifty = textFifty ?? Rx("0,50");
    textTwentyFive = textTwentyFive ?? Rx("0,25");
    imageVector1064 =
        imageVector1064 ?? Rx(ImageConstant.imgVector1064Primary36x152);
    textZero = textZero ?? Rx("0");
    textFifteen = textFifteen ?? Rx("15");
    textThirty = textThirty ?? Rx("30");
    textFortyFive = textFortyFive ?? Rx("45");
    textSixty = textSixty ?? Rx("60");
    textLast1Hour = textLast1Hour ?? Rx("Last 1 hour");
    id = id ?? Rx("");
  }

  Rx<String>? textIN1;

  Rx<String>? textEightyEight;

  Rx<String>? textCos;

  Rx<String>? textCosPhi;

  Rx<String>? textCos1;

  Rx<String>? textOne;

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
