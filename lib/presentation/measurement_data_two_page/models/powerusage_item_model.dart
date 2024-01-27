import '../../../core/app_export.dart';

/// This class is used in the [powerusage_item_widget] screen.
class PowerusageItemModel {
  PowerusageItemModel({
    this.title,
    this.value1,
    this.unit1,
    this.title2,
    this.unit2,
    this.value2,
    this.value3,
    this.value4,
    this.value5,
    this.image2,
    this.value6,
    this.value7,
    this.value8,
    this.value9,
    this.value10,
    this.title3,
    this.id,
  }) {
    title = title ?? Rx("IN1");
    value1 = value1 ?? Rx("56,5");
    unit1 = unit1 ?? Rx("Kw");
    title2 = title2 ?? Rx("Apparent Power");
    unit2 = unit2 ?? Rx("kW");
    value2 = value2 ?? Rx("100");
    value3 = value3 ?? Rx("75");
    value4 = value4 ?? Rx("50");
    value5 = value5 ?? Rx("25");
    image2 = image2 ?? Rx(ImageConstant.imgVector1064);
    value6 = value6 ?? Rx("0");
    value7 = value7 ?? Rx("15");
    value8 = value8 ?? Rx("30");
    value9 = value9 ?? Rx("45");
    value10 = value10 ?? Rx("60");
    title3 = title3 ?? Rx("Last 1 hour");
    id = id ?? Rx("");
  }

  Rx<String>? title;

  Rx<String>? value1;

  Rx<String>? unit1;

  Rx<String>? title2;

  Rx<String>? unit2;

  Rx<String>? value2;

  Rx<String>? value3;

  Rx<String>? value4;

  Rx<String>? value5;

  Rx<String>? image2;

  Rx<String>? value6;

  Rx<String>? value7;

  Rx<String>? value8;

  Rx<String>? value9;

  Rx<String>? value10;

  Rx<String>? title3;

  Rx<String>? id;
}
