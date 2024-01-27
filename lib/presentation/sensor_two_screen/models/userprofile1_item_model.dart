import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.labelController,
    this.id,
  }) {
    labelController = labelController ?? TextEditingController();
    id = id ?? Rx("");
  }

  TextEditingController? labelController;

  Rx<String>? id;
}
