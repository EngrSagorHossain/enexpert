import '../controller/sensor_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SensorTwoScreen.
///
/// This class ensures that the SensorTwoController is created when the
/// SensorTwoScreen is first loaded.
class SensorTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SensorTwoController());
  }
}
