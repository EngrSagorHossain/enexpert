import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/configure_wifi_one_screen/models/configure_wifi_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ConfigureWifiOneScreen.
///
/// This class manages the state of the ConfigureWifiOneScreen, including the
/// current configureWifiOneModelObj
class ConfigureWifiOneController extends GetxController {
  TextEditingController wifiNetworkController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<ConfigureWifiOneModel> configureWifiOneModelObj =
      ConfigureWifiOneModel().obs;

  Rx<bool> showPassword = false.obs;

  @override
  void onClose() {
    super.onClose();
    wifiNetworkController.dispose();
    passwordController.dispose();
  }
}
