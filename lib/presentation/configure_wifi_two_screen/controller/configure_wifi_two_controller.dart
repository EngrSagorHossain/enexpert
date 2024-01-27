import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/configure_wifi_two_screen/models/configure_wifi_two_model.dart';

/// A controller class for the ConfigureWifiTwoScreen.
///
/// This class manages the state of the ConfigureWifiTwoScreen, including the
/// current configureWifiTwoModelObj
class ConfigureWifiTwoController extends GetxController {
  Rx<ConfigureWifiTwoModel> configureWifiTwoModelObj =
      ConfigureWifiTwoModel().obs;
}
