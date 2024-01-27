import '../controller/wifi_manager_one_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WifiManagerOneContainerScreen.
///
/// This class ensures that the WifiManagerOneContainerController is created when the
/// WifiManagerOneContainerScreen is first loaded.
class WifiManagerOneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WifiManagerOneContainerController());
  }
}
