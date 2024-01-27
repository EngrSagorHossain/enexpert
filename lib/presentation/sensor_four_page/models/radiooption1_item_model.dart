import '../../../core/app_export.dart';

/// This class is used in the [radiooption1_item_widget] screen.
class Radiooption1ItemModel {
  Radiooption1ItemModel({
    this.radioGroup,
    this.radioGroup1,
    this.radioGroup2,
    this.id,
  }) {
    radioGroup = radioGroup ?? Rx("");
    radioGroup1 = radioGroup1 ?? Rx("");
    radioGroup2 = radioGroup2 ?? Rx("");
    id = id ?? Rx("");
  }

  Rx<String>? radioGroup;

  Rx<String>? radioGroup1;

  Rx<String>? radioGroup2;

  Rx<String>? id;
}
