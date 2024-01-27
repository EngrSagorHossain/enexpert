import 'controller/app_navigation_controller.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Wifi Manager One - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.wifiManagerOneContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Wifi Manager alert".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.wifiManagerAlertScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Configure Wifi One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.configureWifiOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "info".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.infoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Configure Wifi Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.configureWifiFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Configure Wifi".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.configureWifiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Configure Wifi Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.configureWifiThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Configure Wifi Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.configureWifiTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sensor Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sensorTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sensor Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sensorThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sensor One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sensorOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sensor".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sensorScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sensor Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sensorFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "REGİSTERED MEANSNOIDES".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registeredMeansnoidesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Measurement data - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.measurementDataTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Measurement data One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.measurementDataOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
