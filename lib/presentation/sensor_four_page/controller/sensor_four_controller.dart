import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/sensor_four_page/models/sensor_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SensorFourPage.
///
/// This class manages the state of the SensorFourPage, including the
/// current sensorFourModelObj
class SensorFourController extends GetxController {
  SensorFourController(this.sensorFourModelObj);

  TextEditingController labelController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController labelController1 = TextEditingController();

  Rx<SensorFourModel> sensorFourModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  Rx<String> current = "".obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> current1 = "".obs;

  Rx<String> radioGroup1 = "".obs;

  Rx<String> radioGroup2 = "".obs;

  Rx<String> current2 = "".obs;

  Rx<String> radioGroup3 = "".obs;

  Rx<String> radioGroup4 = "".obs;

  Rx<int> sliderIndex = 0.obs;

  Rx<String> current3 = "".obs;

  Rx<String> radioGroup5 = "".obs;

  Rx<String> current4 = "".obs;

  Rx<String> radioGroup6 = "".obs;

  Rx<String> radioGroup7 = "".obs;

  Rx<String> current5 = "".obs;

  Rx<String> radioGroup8 = "".obs;

  Rx<String> radioGroup9 = "".obs;

  Rx<bool> isSelectedSwitch3 = false.obs;

  Rx<bool> isSelectedSwitch4 = false.obs;

  Rx<bool> isSelectedSwitch5 = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    labelController.dispose();
    nameController.dispose();
    labelController1.dispose();
  }

  onSelected(dynamic value) {
    for (var element in sensorFourModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    sensorFourModelObj.value.dropdownItemList.refresh();
  }
}
