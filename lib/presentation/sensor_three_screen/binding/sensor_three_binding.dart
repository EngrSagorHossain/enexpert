import '../controller/sensor_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SensorThreeScreen.
///
/// This class ensures that the SensorThreeController is created when the
/// SensorThreeScreen is first loaded.
class SensorThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SensorThreeController());
  }
}
