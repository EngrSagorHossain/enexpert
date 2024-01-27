import '../../../core/app_export.dart';

/// This class is used in the [dynamicview_item_widget] screen.
class DynamicviewItemModel {
  DynamicviewItemModel({
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.text7,
    this.text8,
    this.text9,
    this.image2,
    this.text10,
    this.text11,
    this.text12,
    this.text13,
    this.text14,
    this.text15,
    this.id,
  }) {
    text1 = text1 ?? Rx("IN1");
    text2 = text2 ?? Rx("223");
    text3 = text3 ?? Rx("V");
    text4 = text4 ?? Rx("Voltage");
    text5 = text5 ?? Rx("V");
    text6 = text6 ?? Rx("400");
    text7 = text7 ?? Rx("300");
    text8 = text8 ?? Rx("200");
    text9 = text9 ?? Rx("100");
    image2 = image2 ?? Rx(ImageConstant.imgVector1064Primary36x152);
    text10 = text10 ?? Rx("0");
    text11 = text11 ?? Rx("15");
    text12 = text12 ?? Rx("30");
    text13 = text13 ?? Rx("45");
    text14 = text14 ?? Rx("60");
    text15 = text15 ?? Rx("Last 1 hour");
    id = id ?? Rx("");
  }

  Rx<String>? text1;

  Rx<String>? text2;

  Rx<String>? text3;

  Rx<String>? text4;

  Rx<String>? text5;

  Rx<String>? text6;

  Rx<String>? text7;

  Rx<String>? text8;

  Rx<String>? text9;

  Rx<String>? image2;

  Rx<String>? text10;

  Rx<String>? text11;

  Rx<String>? text12;

  Rx<String>? text13;

  Rx<String>? text14;

  Rx<String>? text15;

  Rx<String>? id;
}
