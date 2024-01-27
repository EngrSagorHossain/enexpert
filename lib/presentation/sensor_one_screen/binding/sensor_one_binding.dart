import '../controller/sensor_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SensorOneScreen.
///
/// This class ensures that the SensorOneController is created when the
/// SensorOneScreen is first loaded.
class SensorOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SensorOneController());
  }
}
