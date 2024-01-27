import 'controller/configure_wifi_one_controller.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/core/utils/validation_functions.dart';
import 'package:enexpet/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:enexpet/widgets/app_bar/appbar_title.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_checkbox_button.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_outlined_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ConfigureWifiOneScreen extends GetWidget<ConfigureWifiOneController> {
  ConfigureWifiOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 31.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildThirtySeven(
                                      fillDeviceSigImage: ImageConstant
                                          .imgFillDeviceSignalWifiFill,
                                      text: "msg_fritz_box_5490_ql".tr,
                                      lineSystemLockUnlockImage:
                                          ImageConstant.imgLineSystemLockLine),
                                  _buildThirtySeven(
                                      fillDeviceSigImage:
                                          ImageConstant.imgFillDeviceSig,
                                      text: "msg_fritz_box_5490_ql".tr,
                                      lineSystemLockUnlockImage: ImageConstant
                                          .imgLineSystemLockUnlockLine),
                                  _buildThirtyFour(
                                      fritzBox5490QL:
                                          "msg_fritz_box_5490_ql".tr),
                                  _buildThirtyFour(
                                      fritzBox5490QL:
                                          "msg_fritz_box_5490_ql".tr),
                                  _buildThirtyFour(
                                      fritzBox5490QL:
                                          "msg_direct_d5_hp_officejet".tr),
                                  SizedBox(height: 37.v),
                                  Text("lbl_ssid".tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 5.v),
                                  _buildWifiNetwork(),
                                  SizedBox(height: 29.v),
                                  Text("lbl_password".tr,
                                      style: theme.textTheme.bodyMedium),
                                  SizedBox(height: 5.v),
                                  _buildPassword(),
                                  SizedBox(height: 28.v),
                                  _buildShowPassword(),
                                  SizedBox(height: 51.v),
                                  _buildRefresh(),
                                  SizedBox(height: 15.v),
                                  _buildSave(),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 20.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_configure_wifi".tr));
  }

  /// Section Widget
  Widget _buildWifiNetwork() {
    return CustomTextFormField(
        controller: controller.wifiNetworkController,
        hintText: "lbl_tp_link_9844".tr,
        hintStyle: CustomTextStyles.bodySmallErrorContainer);
  }

  /// Section Widget
  Widget _buildPassword() {
    return CustomTextFormField(
        controller: controller.passwordController,
        hintText: "lbl".tr,
        hintStyle: CustomTextStyles.bodySmallErrorContainer,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true);
  }

  /// Section Widget
  Widget _buildShowPassword() {
    return Obx(() => CustomCheckboxButton(
        text: "lbl_show_password".tr,
        value: controller.showPassword.value,
        padding: EdgeInsets.symmetric(vertical: 1.v),
        textStyle: CustomTextStyles.bodySmallRegular,
        onChange: (value) {
          controller.showPassword.value = value;
        }));
  }

  /// Section Widget
  Widget _buildRefresh() {
    return CustomOutlinedButton(
        height: 42.v,
        text: "lbl_refresh".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLineSystemRefreshline,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.labelLargePrimary);
  }

  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(text: "lbl_save".tr);
  }

  /// Common widget
  Widget _buildThirtySeven({
    required String fillDeviceSigImage,
    required String text,
    required String lineSystemLockUnlockImage,
  }) {
    return Container(
        padding: EdgeInsets.fromLTRB(12.h, 8.v, 12.h, 7.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Row(children: [
          SizedBox(
              height: 32.adaptSize,
              width: 32.adaptSize,
              child: Stack(alignment: Alignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgContrast,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: fillDeviceSigImage,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center)
              ])),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 6.v, bottom: 4.v),
              child: Text(text,
                  style: CustomTextStyles.bodyMedium_1
                      .copyWith(color: appTheme.black900))),
          Spacer(),
          CustomImageView(
              imagePath: lineSystemLockUnlockImage,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v))
        ]));
  }

  /// Common widget
  Widget _buildThirtyFour({required String fritzBox5490QL}) {
    return Container(
        padding: EdgeInsets.fromLTRB(12.h, 8.v, 12.h, 7.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Row(children: [
          Container(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.outlineBluegray10003
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
              child: CustomImageView(
                  imagePath: ImageConstant.imgFillDeviceSig,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 6.v, bottom: 4.v),
              child: Text(fritzBox5490QL,
                  style: CustomTextStyles.bodyMedium_1
                      .copyWith(color: appTheme.black900))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgLineSystemLockLine,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
