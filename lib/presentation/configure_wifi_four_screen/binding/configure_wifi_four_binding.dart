import '../controller/configure_wifi_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfigureWifiFourScreen.
///
/// This class ensures that the ConfigureWifiFourController is created when the
/// ConfigureWifiFourScreen is first loaded.
class ConfigureWifiFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfigureWifiFourController());
  }
}
