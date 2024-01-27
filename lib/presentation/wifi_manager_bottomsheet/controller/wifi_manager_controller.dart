import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_manager_bottomsheet/models/wifi_manager_model.dart';

/// A controller class for the WifiManagerBottomsheet.
///
/// This class manages the state of the WifiManagerBottomsheet, including the
/// current wifiManagerModelObj
class WifiManagerController extends GetxController {
  Rx<WifiManagerModel> wifiManagerModelObj = WifiManagerModel().obs;
}
