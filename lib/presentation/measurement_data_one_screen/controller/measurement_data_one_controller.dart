import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_one_screen/models/measurement_data_one_model.dart';

/// A controller class for the MeasurementDataOneScreen.
///
/// This class manages the state of the MeasurementDataOneScreen, including the
/// current measurementDataOneModelObj
class MeasurementDataOneController extends GetxController {
  Rx<MeasurementDataOneModel> measurementDataOneModelObj =
      MeasurementDataOneModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in measurementDataOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measurementDataOneModelObj.value.dropdownItemList.refresh();
  }
}
