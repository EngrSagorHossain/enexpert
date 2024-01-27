import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_page/models/measurement_data_model.dart';

/// A controller class for the MeasurementDataPage.
///
/// This class manages the state of the MeasurementDataPage, including the
/// current measurementDataModelObj
class MeasurementDataController extends GetxController {
  MeasurementDataController(this.measurementDataModelObj);

  Rx<MeasurementDataModel> measurementDataModelObj;
}
