import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_measnode_page/models/measurement_data_measnode_model.dart';

/// A controller class for the MeasurementDataMeasnodePage.
///
/// This class manages the state of the MeasurementDataMeasnodePage, including the
/// current measurementDataMeasnodeModelObj
class MeasurementDataMeasnodeController extends GetxController {
  MeasurementDataMeasnodeController(this.measurementDataMeasnodeModelObj);

  Rx<MeasurementDataMeasnodeModel> measurementDataMeasnodeModelObj;

  Rx<bool> clamp = false.obs;

  Rx<bool> clamp1 = false.obs;

  Rx<bool> clamp2 = false.obs;

  Rx<bool> clamp3 = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element
        in measurementDataMeasnodeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measurementDataMeasnodeModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element
        in measurementDataMeasnodeModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measurementDataMeasnodeModelObj.value.dropdownItemList1.refresh();
  }
}
