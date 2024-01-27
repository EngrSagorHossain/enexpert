import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_manager_one_page/models/wifi_manager_one_model.dart';

/// A controller class for the WifiManagerOnePage.
///
/// This class manages the state of the WifiManagerOnePage, including the
/// current wifiManagerOneModelObj
class WifiManagerOneController extends GetxController {
  WifiManagerOneController(this.wifiManagerOneModelObj);

  Rx<WifiManagerOneModel> wifiManagerOneModelObj;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element in wifiManagerOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    wifiManagerOneModelObj.value.dropdownItemList.refresh();
  }
}
