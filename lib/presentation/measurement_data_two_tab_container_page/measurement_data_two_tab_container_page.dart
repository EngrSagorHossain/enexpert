import 'controller/measurement_data_two_tab_container_controller.dart';
import 'models/measurement_data_two_tab_container_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_two_page/measurement_data_two_page.dart';
import 'package:enexpet/widgets/app_bar/appbar_title_image.dart';
import 'package:enexpet/widgets/app_bar/appbar_trailing_dropdown.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MeasurementDataTwoTabContainerPage extends StatelessWidget {
  MeasurementDataTwoTabContainerPage({Key? key})
      : super(
          key: key,
        );

  MeasurementDataTwoTabContainerController controller = Get.put(
      MeasurementDataTwoTabContainerController(
          MeasurementDataTwoTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 27.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_measurement".tr,
                      style: CustomTextStyles.headlineLargeMontserrat,
                    ),
                  ),
                ),
                SizedBox(height: 23.v),
                _buildTabview(),
                SizedBox(
                  height: 2043.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      MeasurementDataTwoPage(),
                      MeasurementDataTwoPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
            items: controller.measurementDataTwoTabContainerModelObj.value
                .dropdownItemList!.value,
            onTap: (value) {
              controller.onSelected(value);
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 40.v,
      width: 350.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.whiteA700,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
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
                horizontal: 66.h,
                vertical: 9.v,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_in".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Tab(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 35.h,
                vertical: 9.v,
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_measnode".tr,
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

  /// Common widget
  Widget _buildFrame({
    required String lineBusinessB,
    required String measNode,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 35.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: lineBusinessB,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              measNode,
              style: CustomTextStyles.bodyMedium_1.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
