import '../controller/sensor_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SensorFiveScreen.
///
/// This class ensures that the SensorFiveController is created when the
/// SensorFiveScreen is first loaded.
class SensorFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SensorFiveController());
  }
}
