import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/wifi_manager_one_container_screen/models/wifi_manager_one_container_model.dart';

/// A controller class for the WifiManagerOneContainerScreen.
///
/// This class manages the state of the WifiManagerOneContainerScreen, including the
/// current wifiManagerOneContainerModelObj
class WifiManagerOneContainerController extends GetxController {
  Rx<WifiManagerOneContainerModel> wifiManagerOneContainerModelObj =
      WifiManagerOneContainerModel().obs;
}
