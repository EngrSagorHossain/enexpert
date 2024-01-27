import '../controller/configure_wifi_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfigureWifiOneScreen.
///
/// This class ensures that the ConfigureWifiOneController is created when the
/// ConfigureWifiOneScreen is first loaded.
class ConfigureWifiOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigureWifiOneController());
  }
}
