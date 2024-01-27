import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.labelController,
    this.id,
  }) {
    labelController = labelController ?? TextEditingController();
    id = id ?? Rx("");
  }

  TextEditingController? labelController;

  Rx<String>? id;
}
