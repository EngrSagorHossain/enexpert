import 'controller/wifi_manager_alert_controller.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_measnode_page/measurement_data_measnode_page.dart';
import 'package:enexpet/presentation/measurement_data_two_tab_container_page/measurement_data_two_tab_container_page.dart';
import 'package:enexpet/presentation/sensor_four_page/sensor_four_page.dart';
import 'package:enexpet/presentation/wifi_manager_one_page/wifi_manager_one_page.dart';
import 'package:enexpet/widgets/app_bar/appbar_title_image.dart';
import 'package:enexpet/widgets/app_bar/appbar_trailing_dropdown.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_bottom_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:enexpet/presentation/wifi_manager_bottomsheet/wifi_manager_bottomsheet.dart';
import 'package:enexpet/presentation/wifi_manager_bottomsheet/controller/wifi_manager_controller.dart';

class WifiManagerAlertScreen extends GetWidget<WifiManagerAlertController> {
  const WifiManagerAlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(children: [
                  SizedBox(height: 4.v),
                  Container(
                      height: 166.adaptSize,
                      width: 166.adaptSize,
                      decoration: AppDecoration.outline.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder83),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgComponent131,
                          height: 166.adaptSize,
                          width: 166.adaptSize,
                          alignment: Alignment.center)),
                  SizedBox(height: 17.v),
                  Text("lbl_wifi_manager".tr,
                      style: CustomTextStyles.headlineLargeMontserrat),
                  SizedBox(height: 3.v),
                  Text("lbl_exp_2b2_t_00005".tr,
                      style: CustomTextStyles.titleLarge_1),
                  SizedBox(height: 14.v),
                  _buildAlerts(),
                  SizedBox(height: 24.v),
                  _buildConfigureWifiButton(),
                  SizedBox(height: 16.v),
                  _buildInfoButton(),
                  SizedBox(height: 16.v),
                  _buildExitButton(),
                  SizedBox(height: 16.v),
                  _buildUpdateButton()
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        title: AppbarTitleImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.only(left: 20.h)),
        actions: [
          Obx(() => AppbarTrailingDropdown(
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v),
              hintText: "lbl_de".tr,
              items: controller
                  .wifiManagerAlertModelObj.value.dropdownItemList!.value,
              onTap: (value) {
                controller.onSelected(value);
              }))
        ]);
  }

  /// Section Widget
  Widget _buildAlerts() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgLineSystemChe,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 4.h, top: 2.v, bottom: 3.v),
                    child: Text("lbl_connected".tr,
                        style: CustomTextStyles.labelLargeOnPrimaryContainer)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(bottom: 8.v))
              ]),
              SizedBox(height: 15.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_connected".tr,
                        style: CustomTextStyles.labelLargeff000000_1),
                    TextSpan(
                        text: "lbl_to".tr,
                        style: CustomTextStyles.bodySmallff000000),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_tp_link_9844".tr,
                        style: CustomTextStyles.labelLargeff000000_1),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_with".tr,
                        style: CustomTextStyles.bodySmallff000000),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "msg_ip_192_168_0_100".tr,
                        style: CustomTextStyles.labelLargeff000000_1)
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildConfigureWifiButton() {
    return CustomElevatedButton(
        text: "lbl_configure_wifi".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowdownWhiteA700,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapConfigureWifiButton();
        });
  }

  /// Section Widget
  Widget _buildInfoButton() {
    return CustomElevatedButton(
        text: "lbl_info".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLineSystemInformationline,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapInfoButton();
        });
  }

  /// Section Widget
  Widget _buildExitButton() {
    return CustomElevatedButton(
        text: "lbl_exit".tr,
        rightIcon: Container(
            margin: EdgeInsets.only(),
            child: CustomImageView(
                imagePath: ImageConstant.imgLineSystemLogoutcirclerline,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        onPressed: () {
          onTapExitButton();
        });
  }

  /// Section Widget
  Widget _buildUpdateButton() {
    return CustomElevatedButton(
        text: "lbl_update".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLineSystemUploadcloud2line,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.fillBlueGray,
        onPressed: () {
          onTapUpdateButton();
        });
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

  /// Navigates to the configureWifiOneScreen when the action is triggered.
  onTapConfigureWifiButton() {
    Get.toNamed(
      AppRoutes.configureWifiOneScreen,
    );
  }

  /// Navigates to the infoScreen when the action is triggered.
  onTapInfoButton() {
    Get.toNamed(
      AppRoutes.infoScreen,
    );
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [WifiManagerBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [WifiManagerController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapExitButton() {
    Get.bottomSheet(
      WifiManagerBottomsheet(
        Get.put(
          WifiManagerController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  /// Navigates to the configureWifiThreeScreen when the action is triggered.
  onTapUpdateButton() {
    Get.toNamed(
      AppRoutes.configureWifiThreeScreen,
    );
  }
}
