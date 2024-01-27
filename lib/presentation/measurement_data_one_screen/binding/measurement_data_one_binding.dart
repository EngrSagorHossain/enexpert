import '../controller/measurement_data_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MeasurementDataOneScreen.
///
/// This class ensures that the MeasurementDataOneController is created when the
/// MeasurementDataOneScreen is first loaded.
class MeasurementDataOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MeasurementDataOneController());
  }
}
