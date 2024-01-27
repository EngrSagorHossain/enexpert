import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/configure_wifi_three_screen/models/configure_wifi_three_model.dart';

/// A controller class for the ConfigureWifiThreeScreen.
///
/// This class manages the state of the ConfigureWifiThreeScreen, including the
/// current configureWifiThreeModelObj
class ConfigureWifiThreeController extends GetxController {
  Rx<ConfigureWifiThreeModel> configureWifiThreeModelObj =
      ConfigureWifiThreeModel().obs;
}
