import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/configure_wifi_four_screen/models/configure_wifi_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ConfigureWifiFourScreen.
///
/// This class manages the state of the ConfigureWifiFourScreen, including the
/// current configureWifiFourModelObj
class ConfigureWifiFourController extends GetxController {
  TextEditingController wifiButtonController = TextEditingController();

  Rx<ConfigureWifiFourModel> configureWifiFourModelObj =
      ConfigureWifiFourModel().obs;

  @override
  void onClose() {
    super.onClose();
    wifiButtonController.dispose();
  }
}
