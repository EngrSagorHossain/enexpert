import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/configure_wifi_screen/models/configure_wifi_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ConfigureWifiScreen.
///
/// This class manages the state of the ConfigureWifiScreen, including the
/// current configureWifiModelObj
class ConfigureWifiController extends GetxController {
  TextEditingController wifivalueController = TextEditingController();

  Rx<ConfigureWifiModel> configureWifiModelObj = ConfigureWifiModel().obs;

  @override
  void onClose() {
    super.onClose();
    wifivalueController.dispose();
  }
}
