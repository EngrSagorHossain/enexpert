import 'controller/measurement_data_tab_container_controller.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_measnode_page/measurement_data_measnode_page.dart';
import 'package:enexpet/presentation/measurement_data_page/measurement_data_page.dart';
import 'package:enexpet/presentation/measurement_data_two_tab_container_page/measurement_data_two_tab_container_page.dart';
import 'package:enexpet/presentation/sensor_four_page/sensor_four_page.dart';
import 'package:enexpet/presentation/wifi_manager_one_page/wifi_manager_one_page.dart';
import 'package:enexpet/widgets/custom_bottom_bar.dart';
import 'package:enexpet/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MeasurementDataTabContainerScreen
    extends GetWidget<MeasurementDataTabContainerController> {
  const MeasurementDataTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 64.v),
              _buildVectorRow(),
              SizedBox(height: 36.v),
              Container(
                width: 230.h,
                margin: EdgeInsets.only(left: 20.h),
                child: Text(
                  "msg_measurement_data".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineLargeMontserrat,
                ),
              ),
              SizedBox(height: 23.v),
              _buildTabview(),
              SizedBox(
                height: 474.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MeasurementDataPage(),
                    MeasurementDataPage(),
                    MeasurementDataPage(),
                    MeasurementDataPage(),
                    MeasurementDataPage(),
                    MeasurementDataPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildVectorRow() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 40.v,
              width: 132.h,
            ),
            CustomDropDown(
              width: 96.h,
              icon: Container(
                margin: EdgeInsets.fromLTRB(18.h, 8.v, 8.h, 8.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              hintText: "lbl_de".tr,
              items: controller.measurementDataTabContainerModelObj.value
                  .dropdownItemList!.value,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(8.h, 12.v, 6.h, 12.v),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEllipse5166,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 40.v,
              ),
              onChanged: (value) {
                controller.onSelected(value);
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 40.v,
      width: 370.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            4.h,
          ),
          boxShadow: [
            BoxShadow(
              color: appTheme.black900.withOpacity(0.1),
              spreadRadius: 2.h,
              blurRadius: 2.h,
              offset: Offset(
                0,
                4,
              ),
            ),
          ],
        ),
        tabs: [
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNavMeasurement,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "lbl_in1_data".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLineBusinessB,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "lbl_in2_data".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNavMeasurement,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "lbl_in3_data".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNavMeasurement,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 1.v,
                    ),
                    child: Text(
                      "lbl_in4_data".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNavMeasurement,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_in5_data".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgNavMeasurement,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_in6_data".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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

  /// Common widget
  Widget _buildFrame({required String iNData}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgNavMeasurement,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              bottom: 1.v,
            ),
            child: Text(
              iNData,
              style: CustomTextStyles.bodyMedium_1.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ],
      ),
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
