import 'controller/info_controller.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:enexpet/widgets/app_bar/appbar_title.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InfoScreen extends GetWidget<InfoController> {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 28.v),
                child: Column(children: [
                  _buildEsp32Row(),
                  SizedBox(height: 24.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(children: [
                        _buildFortyColumn(
                            chipId: "lbl_uptime".tr,
                            label: "lbl_14_mins_18_secs".tr),
                        _buildFortyColumn(
                            chipId: "lbl_chip_id".tr, label: "lbl_8ce22748".tr),
                        _buildFortyColumn(
                            chipId: "lbl_chip_rev".tr, label: "lbl_0".tr),
                        _buildFortyColumn(
                            chipId: "lbl_flash_size".tr,
                            label: "lbl_4194304_bytes".tr),
                        _buildFortyColumn(
                            chipId: "lbl_psram_size".tr,
                            label: "lbl_0_bytes".tr),
                        _buildFortyColumn(
                            chipId: "lbl_cpu_frequency".tr,
                            label: "lbl_240_mhz".tr),
                        _buildFortyColumn(
                            chipId: "msg_memory_free_heap".tr,
                            label: "msg_127184_bytes_available".tr),
                        _buildMemorySketchRow(),
                        _buildFortyColumn(
                            chipId: "lbl_temperature".tr,
                            label: "msg_36_20_c_122_76".tr)
                      ])),
                  SizedBox(height: 5.v)
                ]))));
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
        title: AppbarTitle(text: "lbl_info".tr));
  }

  /// Section Widget
  Widget _buildEsp32Row() {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomElevatedButton(
                  height: 40.v,
                  width: 110.h,
                  text: "lbl_esp_32".tr,
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLineDeviceCpuline,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  buttonStyle: CustomButtonStyles.outlineBlack,
                  buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: CustomTextFormField(
                      width: 110.h,
                      controller: controller.wiFiController,
                      hintText: "lbl_wifi".tr,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 10.v, 4.h, 10.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdownBlack900,
                              height: 20.adaptSize,
                              width: 20.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 40.v),
                      contentPadding:
                          EdgeInsets.only(top: 9.v, right: 30.h, bottom: 9.v),
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                      fillColor: appTheme.whiteA700)),
              Container(
                  width: 130.h,
                  margin: EdgeInsets.only(left: 10.h),
                  padding: EdgeInsets.symmetric(vertical: 7.v),
                  decoration: AppDecoration.outlineBlack
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLineDocumentPagesLine,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 2.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 4.h, top: 2.v),
                        child: Text("lbl_available_pages".tr,
                            style: CustomTextStyles.bodyMedium_1))
                  ]))
            ])));
  }

  /// Section Widget
  Widget _buildMemorySketchRow() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_memory_sketch".tr, style: theme.textTheme.titleSmall),
            SizedBox(height: 6.v),
            Text("msg_used_total_bytes".tr,
                style: CustomTextStyles.bodySmallErrorContainer)
          ]),
          Padding(
              padding: EdgeInsets.only(top: 14.v, bottom: 3.v),
              child: Column(children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "lbl_1223536".tr,
                          style: CustomTextStyles.bodySmallff0099ff),
                      TextSpan(
                          text: "lbl_2534256".tr,
                          style: CustomTextStyles.bodySmallff000000Regular)
                    ]),
                    textAlign: TextAlign.left),
                SizedBox(height: 5.v),
                Container(
                    height: 8.v,
                    width: 162.h,
                    decoration: BoxDecoration(
                        color: appTheme.gray50,
                        borderRadius: BorderRadius.circular(4.h),
                        border: Border.all(
                            color: appTheme.blueGray10003, width: 1.h)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.h),
                        child: LinearProgressIndicator(
                            value: 0.63,
                            backgroundColor: appTheme.gray50,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary))))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildFortyColumn({
    required String chipId,
    required String label,
  }) {
    return Container(
        width: 350.h,
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        decoration: AppDecoration.outlineBlueGray,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(chipId,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.black900)),
              SizedBox(height: 6.v),
              Text(label,
                  style: CustomTextStyles.bodySmallErrorContainer
                      .copyWith(color: theme.colorScheme.errorContainer))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
