import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_three_page/models/measurement_data_three_model.dart';

/// A controller class for the MeasurementDataThreePage.
///
/// This class manages the state of the MeasurementDataThreePage, including the
/// current measurementDataThreeModelObj
class MeasurementDataThreeController extends GetxController {
  MeasurementDataThreeController(this.measurementDataThreeModelObj);

  Rx<MeasurementDataThreeModel> measurementDataThreeModelObj;
}
