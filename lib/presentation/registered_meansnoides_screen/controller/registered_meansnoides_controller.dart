import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/registered_meansnoides_screen/models/registered_meansnoides_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegisteredMeansnoidesScreen.
///
/// This class manages the state of the RegisteredMeansnoidesScreen, including the
/// current registeredMeansnoidesModelObj
class RegisteredMeansnoidesController extends GetxController {
  TextEditingController labelController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController labelController1 = TextEditingController();

  Rx<RegisteredMeansnoidesModel> registeredMeansnoidesModelObj =
      RegisteredMeansnoidesModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> isSelectedSwitch2 = false.obs;

  Rx<String> current = "".obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;

  Rx<String> current1 = "".obs;

  Rx<String> radioGroup2 = "".obs;

  Rx<String> radioGroup3 = "".obs;

  Rx<String> current2 = "".obs;

  Rx<String> radioGroup4 = "".obs;

  Rx<String> radioGroup5 = "".obs;

  Rx<int> sliderIndex = 0.obs;

  Rx<String> current3 = "".obs;

  Rx<String> radioGroup6 = "".obs;

  Rx<String> current4 = "".obs;

  Rx<String> radioGroup7 = "".obs;

  Rx<String> radioGroup8 = "".obs;

  Rx<String> current5 = "".obs;

  Rx<String> radioGroup9 = "".obs;

  Rx<String> radioGroup10 = "".obs;

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
    for (var element
        in registeredMeansnoidesModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    registeredMeansnoidesModelObj.value.dropdownItemList.refresh();
  }
}
