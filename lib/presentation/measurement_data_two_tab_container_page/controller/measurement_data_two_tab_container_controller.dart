import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_two_tab_container_page/models/measurement_data_two_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MeasurementDataTwoTabContainerPage.
///
/// This class manages the state of the MeasurementDataTwoTabContainerPage, including the
/// current measurementDataTwoTabContainerModelObj
class MeasurementDataTwoTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  MeasurementDataTwoTabContainerController(
      this.measurementDataTwoTabContainerModelObj);

  Rx<MeasurementDataTwoTabContainerModel>
      measurementDataTwoTabContainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in measurementDataTwoTabContainerModelObj
        .value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    measurementDataTwoTabContainerModelObj.value.dropdownItemList.refresh();
  }
}
