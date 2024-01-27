import '../controller/configure_wifi_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfigureWifiScreen.
///
/// This class ensures that the ConfigureWifiController is created when the
/// ConfigureWifiScreen is first loaded.
class ConfigureWifiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigureWifiController());
  }
}
