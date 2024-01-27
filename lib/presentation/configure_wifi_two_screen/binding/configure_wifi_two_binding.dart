import '../controller/configure_wifi_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfigureWifiTwoScreen.
///
/// This class ensures that the ConfigureWifiTwoController is created when the
/// ConfigureWifiTwoScreen is first loaded.
class ConfigureWifiTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigureWifiTwoController());
  }
}
