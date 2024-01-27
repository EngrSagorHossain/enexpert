import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_measnode_one_page/models/measurement_data_measnode_one_model.dart';

/// A controller class for the MeasurementDataMeasnodeOnePage.
///
/// This class manages the state of the MeasurementDataMeasnodeOnePage, including the
/// current measurementDataMeasnodeOneModelObj
class MeasurementDataMeasnodeOneController extends GetxController {
  MeasurementDataMeasnodeOneController(this.measurementDataMeasnodeOneModelObj);

  Rx<MeasurementDataMeasnodeOneModel> measurementDataMeasnodeOneModelObj;

  Rx<int> sliderIndex = 0.obs;

  Rx<int> sliderIndex1 = 0.obs;

  Rx<int> sliderIndex2 = 0.obs;

  Rx<int> sliderIndex3 = 0.obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in measurementDataMeasnodeOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measurementDataMeasnodeOneModelObj.value.dropdownItemList.refresh();
  }
}
