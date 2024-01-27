import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/info_screen/models/info_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the InfoScreen.
///
/// This class manages the state of the InfoScreen, including the
/// current infoModelObj
class InfoController extends GetxController {
  TextEditingController wiFiController = TextEditingController();

  Rx<InfoModel> infoModelObj = InfoModel().obs;

  @override
  void onClose() {
    super.onClose();
    wiFiController.dispose();
  }
}
