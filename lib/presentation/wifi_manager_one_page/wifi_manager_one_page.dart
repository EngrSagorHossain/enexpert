import 'controller/wifi_manager_one_controller.dart';
import 'models/wifi_manager_one_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/app_bar/appbar_title_image.dart';
import 'package:enexpet/widgets/app_bar/appbar_trailing_dropdown.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WifiManagerOnePage extends StatelessWidget {
  WifiManagerOnePage({Key? key})
      : super(
          key: key,
        );

  WifiManagerOneController controller =
      Get.put(WifiManagerOneController(WifiManagerOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 28.v),
            child: Column(
              children: [
                Container(
                  height: 166.adaptSize,
                  width: 166.adaptSize,
                  decoration: AppDecoration.outline.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder83,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgComponent131,
                    height: 166.adaptSize,
                    width: 166.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 17.v),
                Text(
                  "lbl_wifi_manager".tr,
                  style: CustomTextStyles.headlineLargeMontserrat,
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_exp_2b2_t_00005".tr,
                  style: CustomTextStyles.titleLarge_1,
                ),
                SizedBox(height: 118.v),
                _buildConfigureWifiButton(),
                SizedBox(height: 16.v),
                _buildInfoButton(),
                SizedBox(height: 16.v),
                _buildExitButton(),
                SizedBox(height: 16.v),
                _buildUpdateButton(),
                SizedBox(height: 112.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.outlineOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 136.h,
                        child: Divider(
                          color: appTheme.black900,
                        ),
                      ),
                      SizedBox(height: 36.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                      ),
                      SizedBox(height: 33.v),
                      Text(
                        "lbl_are_you_sure".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLarge_1,
                      ),
                      SizedBox(height: 18.v),
                      Text(
                        "msg_are_you_sure_you".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodySmallBluegray900,
                      ),
                      SizedBox(height: 33.v),
                      _buildExitButton1(),
                      SizedBox(height: 32.v),
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
            items:
                controller.wifiManagerOneModelObj.value.dropdownItemList!.value,
            onTap: (value) {
              controller.onSelected(value);
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildConfigureWifiButton() {
    return CustomElevatedButton(
      text: "lbl_configure_wifi".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 3.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowdownWhiteA700,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoButton() {
    return CustomElevatedButton(
      text: "lbl_info".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 3.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLineSystemInformationline,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExitButton() {
    return CustomElevatedButton(
      text: "lbl_exit".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      rightIcon: Container(
        margin: EdgeInsets.only(),
        child: CustomImageView(
          imagePath: ImageConstant.imgLineSystemLogoutcirclerline,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUpdateButton() {
    return CustomElevatedButton(
      text: "lbl_update".tr,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 3.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLineSystemUploadcloud2line,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
    );
  }

  /// Section Widget
  Widget _buildExitButton1() {
    return CustomElevatedButton(
      text: "lbl_exit".tr,
      leftIcon: Container(
        margin: EdgeInsets.only(right: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgLineSystemLogoutcirclerline,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillRed,
    );
  }
}
