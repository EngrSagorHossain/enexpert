import 'controller/wifi_manager_one_container_controller.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_measnode_page/measurement_data_measnode_page.dart';
import 'package:enexpet/presentation/measurement_data_two_tab_container_page/measurement_data_two_tab_container_page.dart';
import 'package:enexpet/presentation/sensor_four_page/sensor_four_page.dart';
import 'package:enexpet/presentation/wifi_manager_one_page/wifi_manager_one_page.dart';
import 'package:enexpet/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class WifiManagerOneContainerScreen
    extends GetWidget<WifiManagerOneContainerController> {
  const WifiManagerOneContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.wifiManagerOnePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Wifi:
        return AppRoutes.wifiManagerOnePage;
      case BottomBarEnum.Sensor:
        return AppRoutes.sensorFourPage;
      case BottomBarEnum.Measurement:
        return AppRoutes.measurementDataTwoTabContainerPage;
      case BottomBarEnum.Measnodes:
        return AppRoutes.measurementDataMeasnodePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.wifiManagerOnePage:
        return WifiManagerOnePage();
      case AppRoutes.sensorFourPage:
        return SensorFourPage();
      case AppRoutes.measurementDataTwoTabContainerPage:
        return MeasurementDataTwoTabContainerPage();
      case AppRoutes.measurementDataMeasnodePage:
        return MeasurementDataMeasnodePage();
      default:
        return DefaultWidget();
    }
  }
}
