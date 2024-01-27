import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_two_page/models/measurement_data_two_model.dart';

/// A controller class for the MeasurementDataTwoPage.
///
/// This class manages the state of the MeasurementDataTwoPage, including the
/// current measurementDataTwoModelObj
class MeasurementDataTwoController extends GetxController {
  MeasurementDataTwoController(this.measurementDataTwoModelObj);

  Rx<MeasurementDataTwoModel> measurementDataTwoModelObj;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;

  Rx<int> sliderIndex2 = 0.obs;

  Rx<int> sliderIndex3 = 0.obs;

  Rx<int> sliderIndex4 = 0.obs;
}
