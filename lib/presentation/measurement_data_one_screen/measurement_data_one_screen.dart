import 'controller/measurement_data_one_controller.dart';
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

// ignore_for_file: must_be_immutable
class MeasurementDataOneScreen extends GetWidget<MeasurementDataOneController> {
  const MeasurementDataOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 53.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: 186.h,
                child: Text(
                  "msg_there_is_no_data".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargeMontserrat,
                ),
              ),
              SizedBox(height: 9.v),
              CustomImageView(
                imagePath: ImageConstant.img1,
                height: 221.v,
                width: 193.h,
              ),
              SizedBox(height: 24.v),
              Container(
                width: 264.h,
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                child: Text(
                  "msg_lorem_ipsum_dolor3".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                    height: 2.00,
                  ),
                ),
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "lbl_sensor_config".tr,
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 3.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowleftWhiteA700,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        Obx(
          () => AppbarTrailingDropdown(
            margin: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 8.v,
            ),
            hintText: "lbl_de".tr,
            items: controller
                .measurementDataOneModelObj.value.dropdownItemList!.value,
            onTap: (value) {
              controller.onSelected(value);
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
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
