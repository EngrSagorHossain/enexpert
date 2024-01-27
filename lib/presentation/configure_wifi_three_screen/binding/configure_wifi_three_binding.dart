import '../controller/configure_wifi_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfigureWifiThreeScreen.
///
/// This class ensures that the ConfigureWifiThreeController is created when the
/// ConfigureWifiThreeScreen is first loaded.
class ConfigureWifiThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigureWifiThreeController());
  }
}
