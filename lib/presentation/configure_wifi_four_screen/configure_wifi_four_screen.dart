import '../configure_wifi_four_screen/widgets/availablepagelist_item_widget.dart';
import 'controller/configure_wifi_four_controller.dart';
import 'models/availablepagelist_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:enexpet/widgets/app_bar/appbar_title.dart';
import 'package:enexpet/widgets/app_bar/custom_app_bar.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_outlined_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ConfigureWifiFourScreen extends GetWidget<ConfigureWifiFourController> {
  const ConfigureWifiFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildEsp32Row(),
                      SizedBox(height: 24.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 958.v,
                                    width: 370.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          _buildTwentySixColumn(),
                                          _buildAvailablePageList()
                                        ])),
                                SizedBox(height: 24.v),
                                _buildUpdateButton(),
                                SizedBox(height: 15.v),
                                _buildEraseWifiConfigButton()
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
  Widget _buildEsp32Button() {
    return CustomElevatedButton(
        height: 40.v,
        width: 110.h,
        text: "lbl_esp_32".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLineDeviceCpulineBlack900,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineBlackTL4,
        buttonTextStyle: CustomTextStyles.bodyMedium_1,
        onPressed: () {
          onTapEsp32Button();
        });
  }

  /// Section Widget
  Widget _buildWifiButton() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: CustomTextFormField(
            width: 110.h,
            controller: controller.wifiButtonController,
            hintText: "lbl_wifi".tr,
            textInputAction: TextInputAction.done,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 10.v, 4.h, 10.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdownWhiteA700,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 40.v),
            contentPadding: EdgeInsets.only(top: 9.v, right: 30.h, bottom: 9.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlackTL4,
            fillColor: theme.colorScheme.primary));
  }

  /// Section Widget
  Widget _buildEsp32Row() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          _buildEsp32Button(),
          _buildWifiButton(),
          Container(
              width: 130.h,
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(vertical: 7.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
        ]));
  }

  /// Section Widget
  Widget _buildTwentySixColumn() {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
            margin: EdgeInsets.only(right: 20.h, bottom: 254.v),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
            decoration: AppDecoration.outlineBlueGray,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("lbl_bssid".tr, style: theme.textTheme.titleSmall),
                  SizedBox(height: 8.v),
                  Text("msg_ac_27_e2_8c_65_28".tr,
                      style: CustomTextStyles.bodySmallErrorContainer),
                  SizedBox(height: 1.v)
                ])));
  }

  /// Section Widget
  Widget _buildAvailablePageList() {
    return Align(
        alignment: Alignment.center,
        child: Obx(() => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 1.v);
            },
            itemCount: controller.configureWifiFourModelObj.value
                .availablepagelistItemList.value.length,
            itemBuilder: (context, index) {
              AvailablepagelistItemModel model = controller
                  .configureWifiFourModelObj
                  .value
                  .availablepagelistItemList
                  .value[index];
              return AvailablepagelistItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildUpdateButton() {
    return CustomOutlinedButton(
        height: 42.v,
        text: "lbl_update".tr,
        margin: EdgeInsets.only(right: 20.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 3.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLineSystemUploadcloud2linePrimary,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: CustomTextStyles.labelLargePrimary);
  }

  /// Section Widget
  Widget _buildEraseWifiConfigButton() {
    return CustomElevatedButton(
        text: "msg_erase_w_f_config".tr,
        margin: EdgeInsets.only(right: 20.h),
        buttonStyle: CustomButtonStyles.fillRed);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the infoScreen when the action is triggered.
  onTapEsp32Button() {
    Get.toNamed(
      AppRoutes.infoScreen,
    );
  }
}
