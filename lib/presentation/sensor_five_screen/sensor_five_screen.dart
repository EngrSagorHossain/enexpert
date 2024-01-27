import '../sensor_five_screen/widgets/radio5_item_widget.dart';
import '../sensor_five_screen/widgets/radiooption6_item_widget.dart';
import '../sensor_five_screen/widgets/userprofile3_item_widget.dart';
import 'controller/sensor_five_controller.dart';
import 'models/radio5_item_model.dart';
import 'models/radiooption6_item_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/presentation/measurement_data_measnode_page/measurement_data_measnode_page.dart';
import 'package:enexpet/presentation/measurement_data_two_tab_container_page/measurement_data_two_tab_container_page.dart';
import 'package:enexpet/presentation/sensor_four_page/sensor_four_page.dart';
import 'package:enexpet/presentation/wifi_manager_one_page/wifi_manager_one_page.dart';
import 'package:enexpet/widgets/custom_bottom_bar.dart';
import 'package:enexpet/widgets/custom_drop_down.dart';
import 'package:enexpet/widgets/custom_elevated_button.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:enexpet/widgets/custom_switch.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SensorFiveScreen extends GetWidget<SensorFiveController> {
  const SensorFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 64.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 20.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildVectorRow(),
                                    SizedBox(height: 35.v),
                                    Text("lbl_sensor".tr,
                                        style: CustomTextStyles
                                            .headlineLargeMontserrat),
                                    SizedBox(height: 24.v),
                                    _buildSensorInput(),
                                    SizedBox(height: 29.v),
                                    _buildClientNameInput(),
                                    SizedBox(height: 29.v),
                                    _buildPositionInput(),
                                    SizedBox(height: 44.v),
                                    CustomElevatedButton(text: "lbl_save".tr),
                                    SizedBox(height: 29.v),
                                    Text("lbl_sensor".tr,
                                        style: theme.textTheme.headlineSmall),
                                    SizedBox(height: 26.v),
                                    _buildFrameRow(),
                                    SizedBox(height: 10.v),
                                    _buildChooseCurrentRow(),
                                    SizedBox(height: 10.v),
                                    _buildLabelStack(),
                                    SizedBox(height: 10.v),
                                    _buildChooseCurrentRow1(),
                                    SizedBox(height: 10.v),
                                    _buildFrameRow1(),
                                    SizedBox(height: 32.v),
                                    CustomElevatedButton(
                                        text: "lbl_save".tr,
                                        onPressed: () {
                                          onTapSave();
                                        })
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildVectorRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgVector, height: 40.v, width: 132.h),
      CustomDropDown(
          width: 96.h,
          icon: Container(
              margin: EdgeInsets.fromLTRB(18.h, 8.v, 8.h, 8.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdown,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          hintText: "lbl_de".tr,
          items: controller.sensorFiveModelObj.value.dropdownItemList!.value,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(8.h, 12.v, 6.h, 12.v),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8.h)),
              child: CustomImageView(
                  imagePath: ImageConstant.imgEllipse5166,
                  height: 16.adaptSize,
                  width: 16.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 40.v),
          onChanged: (value) {
            controller.onSelected(value);
          })
    ]);
  }

  /// Section Widget
  Widget _buildSensorInput() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_sensor_number".tr, style: theme.textTheme.bodyMedium),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.labelController,
          hintText: "msg_expower_2b2_23100_0159".tr,
          hintStyle: CustomTextStyles.bodySmallErrorContainer)
    ]);
  }

  /// Section Widget
  Widget _buildClientNameInput() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_client_name".tr, style: theme.textTheme.bodyMedium),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.nameController,
          hintText: "lbl_enexpert".tr,
          hintStyle: CustomTextStyles.bodySmallErrorContainer)
    ]);
  }

  /// Section Widget
  Widget _buildPositionInput() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_position".tr, style: theme.textTheme.bodyMedium),
      SizedBox(height: 5.v),
      CustomTextFormField(
          controller: controller.labelController1,
          hintText: "lbl_lorem_psum".tr,
          hintStyle: CustomTextStyles.bodySmallErrorContainer)
    ]);
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 12.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_in1".tr, style: theme.textTheme.titleMedium),
                    Obx(() => CustomSwitch(
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                        value: controller.isSelectedSwitch.value,
                        onChange: (value) {
                          controller.isSelectedSwitch.value = value;
                        }))
                  ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("lbl_in2".tr, style: theme.textTheme.titleMedium),
                Obx(() => CustomSwitch(
                    margin: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
                    value: controller.isSelectedSwitch1.value,
                    onChange: (value) {
                      controller.isSelectedSwitch1.value = value;
                    }))
              ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 12.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("lbl_in3".tr, style: theme.textTheme.titleMedium),
                Obx(() => CustomSwitch(
                    margin: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
                    value: controller.isSelectedSwitch2.value,
                    onChange: (value) {
                      controller.isSelectedSwitch2.value = value;
                    }))
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildChooseCurrentRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: EdgeInsets.only(right: 5.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_current".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          SizedBox(height: 1.v),
                          SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, right: 9.h),
                              child: Obx(() => Row(children: [
                                    CustomRadioButton(
                                        text: "lbl_l1".tr,
                                        value: controller.sensorFiveModelObj
                                            .value.radioList.value[0],
                                        groupValue: controller.current.value,
                                        onChange: (value) {
                                          controller.current.value = value;
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: CustomRadioButton(
                                            text: "lbl_l2".tr,
                                            value: controller.sensorFiveModelObj
                                                .value.radioList.value[1],
                                            groupValue:
                                                controller.current.value,
                                            onChange: (value) {
                                              controller.current.value = value;
                                            }))
                                  ]))),
                          SizedBox(height: 10.v),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: CustomRadioButton(
                                  text: "lbl_l3".tr,
                                  value: "lbl_l3".tr,
                                  groupValue: controller.radioGroup.value,
                                  onChange: (value) {
                                    controller.radioGroup.value = value;
                                  })))
                        ])),
                SizedBox(height: 8.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Obx(() => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.symmetric(vertical: 0.5.v),
                              child: SizedBox(
                                  width: 88.h,
                                  child: Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: appTheme.blueGray10003)));
                        },
                        itemCount: controller.sensorFiveModelObj.value
                            .radiooption6ItemList.value.length,
                        itemBuilder: (context, index) {
                          Radiooption6ItemModel model = controller
                              .sensorFiveModelObj
                              .value
                              .radiooption6ItemList
                              .value[index];
                          return Radiooption6ItemWidget(model);
                        })))
              ]))),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 5.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_current".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          SizedBox(height: 1.v),
                          SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, right: 9.h),
                              child: Obx(() => Row(children: [
                                    CustomRadioButton(
                                        text: "lbl_l1".tr,
                                        value: controller.sensorFiveModelObj
                                            .value.radioList1.value[0],
                                        groupValue: controller.current1.value,
                                        onChange: (value) {
                                          controller.current1.value = value;
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: CustomRadioButton(
                                            text: "lbl_l2".tr,
                                            value: controller.sensorFiveModelObj
                                                .value.radioList1.value[1],
                                            groupValue:
                                                controller.current1.value,
                                            onChange: (value) {
                                              controller.current1.value = value;
                                            }))
                                  ]))),
                          SizedBox(height: 10.v),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: CustomRadioButton(
                                  text: "lbl_l3".tr,
                                  value: "lbl_l3".tr,
                                  groupValue: controller.radioGroup1.value,
                                  onChange: (value) {
                                    controller.radioGroup1.value = value;
                                  })))
                        ])),
                SizedBox(height: 8.v),
                Obx(() => Column(children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.h, top: 8.v, right: 42.h),
                          child: CustomRadioButton(
                              text: "lbl_50ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList2.value[2],
                              groupValue: controller.radioGroup2.value,
                              onChange: (value) {
                                controller.radioGroup2.value = value;
                              })),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.h, top: 10.v, right: 38.h),
                          child: CustomRadioButton(
                              text: "lbl_100ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList2.value[3],
                              groupValue: controller.radioGroup2.value,
                              onChange: (value) {
                                controller.radioGroup2.value = value;
                              })),
                      Padding(
                          padding: EdgeInsets.fromLTRB(12.h, 10.v, 35.h, 11.v),
                          child: CustomRadioButton(
                              text: "lbl_300ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList2.value[4],
                              groupValue: controller.radioGroup2.value,
                              onChange: (value) {
                                controller.radioGroup2.value = value;
                              }))
                    ]))
              ]))),
      Container(
          margin: EdgeInsets.only(left: 5.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_current".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          SizedBox(height: 1.v),
                          SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, right: 9.h),
                              child: Obx(() => Row(children: [
                                    CustomRadioButton(
                                        text: "lbl_l1".tr,
                                        value: controller.sensorFiveModelObj
                                            .value.radioList3.value[0],
                                        groupValue: controller.current2.value,
                                        onChange: (value) {
                                          controller.current2.value = value;
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: CustomRadioButton(
                                            text: "lbl_l2".tr,
                                            value: controller.sensorFiveModelObj
                                                .value.radioList3.value[1],
                                            groupValue:
                                                controller.current2.value,
                                            onChange: (value) {
                                              controller.current2.value = value;
                                            }))
                                  ]))),
                          SizedBox(height: 10.v),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: CustomRadioButton(
                                  text: "lbl_l3".tr,
                                  value: "lbl_l3".tr,
                                  groupValue: controller.radioGroup3.value,
                                  onChange: (value) {
                                    controller.radioGroup3.value = value;
                                  })))
                        ])),
                SizedBox(height: 8.v),
                Obx(() => Column(children: [
                      Padding(
                          padding: EdgeInsets.only(left: 12.h, right: 10.h),
                          child: CustomRadioButton(
                              text: "lbl_50ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList4.value[1],
                              groupValue: controller.radioGroup4.value,
                              padding: EdgeInsets.only(left: 8.h, right: 24.h),
                              onChange: (value) {
                                controller.radioGroup4.value = value;
                              })),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.h, top: 10.v, right: 38.h),
                          child: CustomRadioButton(
                              text: "lbl_100ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList4.value[2],
                              groupValue: controller.radioGroup4.value,
                              onChange: (value) {
                                controller.radioGroup4.value = value;
                              })),
                      Padding(
                          padding: EdgeInsets.fromLTRB(12.h, 10.v, 35.h, 11.v),
                          child: CustomRadioButton(
                              text: "lbl_300ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList4.value[3],
                              groupValue: controller.radioGroup4.value,
                              onChange: (value) {
                                controller.radioGroup4.value = value;
                              }))
                    ]))
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildLabelStack() {
    return SizedBox(
        height: 260.v,
        width: 350.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Obx(() => CarouselSlider.builder(
              options: CarouselOptions(
                  height: 260.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  }),
              itemCount: controller
                  .sensorFiveModelObj.value.userprofile3ItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                Userprofile3ItemModel model = controller
                    .sensorFiveModelObj.value.userprofile3ItemList.value[index];
                return Userprofile3ItemWidget(model);
              })),
          Align(
              alignment: Alignment.topRight,
              child: Obx(() => Container(
                  height: 8.v,
                  margin: EdgeInsets.only(top: 12.v, right: 12.h),
                  child: AnimatedSmoothIndicator(
                      activeIndex: controller.sliderIndex.value,
                      count: controller.sensorFiveModelObj.value
                          .userprofile3ItemList.value.length,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                          spacing: 6,
                          activeDotColor: theme.colorScheme.primary,
                          dotColor: appTheme.blueGray10004,
                          dotHeight: 8.v,
                          dotWidth: 8.h)))))
        ]));
  }

  /// Section Widget
  Widget _buildChooseCurrentRow1() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          margin: EdgeInsets.only(right: 5.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_current".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          SizedBox(height: 1.v),
                          SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, right: 9.h),
                              child: Obx(() => Row(children: [
                                    CustomRadioButton(
                                        text: "lbl_l1".tr,
                                        value: controller.sensorFiveModelObj
                                            .value.radioList5.value[0],
                                        groupValue: controller.current3.value,
                                        onChange: (value) {
                                          controller.current3.value = value;
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: CustomRadioButton(
                                            text: "lbl_l2".tr,
                                            value: controller.sensorFiveModelObj
                                                .value.radioList5.value[1],
                                            groupValue:
                                                controller.current3.value,
                                            onChange: (value) {
                                              controller.current3.value = value;
                                            }))
                                  ]))),
                          SizedBox(height: 10.v),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: CustomRadioButton(
                                  text: "lbl_l3".tr,
                                  value: "lbl_l3".tr,
                                  groupValue: controller.radioGroup5.value,
                                  onChange: (value) {
                                    controller.radioGroup5.value = value;
                                  })))
                        ])),
                SizedBox(height: 8.v),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.v),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_clamp".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Obx(() => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 0.5.v),
                                        child: SizedBox(
                                            width: 88.h,
                                            child: Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color:
                                                    appTheme.blueGray10003)));
                                  },
                                  itemCount: controller.sensorFiveModelObj.value
                                      .radio5ItemList.value.length,
                                  itemBuilder: (context, index) {
                                    Radio5ItemModel model = controller
                                        .sensorFiveModelObj
                                        .value
                                        .radio5ItemList
                                        .value[index];
                                    return Radio5ItemWidget(model);
                                  })))
                        ]))
              ]))),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 5.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_current".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          SizedBox(height: 1.v),
                          SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, right: 9.h),
                              child: Obx(() => Row(children: [
                                    CustomRadioButton(
                                        text: "lbl_l1".tr,
                                        value: controller.sensorFiveModelObj
                                            .value.radioList6.value[0],
                                        groupValue: controller.current4.value,
                                        onChange: (value) {
                                          controller.current4.value = value;
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: CustomRadioButton(
                                            text: "lbl_l2".tr,
                                            value: controller.sensorFiveModelObj
                                                .value.radioList6.value[1],
                                            groupValue:
                                                controller.current4.value,
                                            onChange: (value) {
                                              controller.current4.value = value;
                                            }))
                                  ]))),
                          SizedBox(height: 10.v),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: CustomRadioButton(
                                  text: "lbl_l3".tr,
                                  value: "lbl_l3".tr,
                                  groupValue: controller.radioGroup6.value,
                                  onChange: (value) {
                                    controller.radioGroup6.value = value;
                                  })))
                        ])),
                SizedBox(height: 8.v),
                Obx(() => Column(children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.h, top: 8.v, right: 42.h),
                          child: CustomRadioButton(
                              text: "lbl_50ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList7.value[2],
                              groupValue: controller.radioGroup7.value,
                              onChange: (value) {
                                controller.radioGroup7.value = value;
                              })),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.h, top: 10.v, right: 38.h),
                          child: CustomRadioButton(
                              text: "lbl_100ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList7.value[3],
                              groupValue: controller.radioGroup7.value,
                              onChange: (value) {
                                controller.radioGroup7.value = value;
                              })),
                      Padding(
                          padding: EdgeInsets.fromLTRB(12.h, 10.v, 35.h, 11.v),
                          child: CustomRadioButton(
                              text: "lbl_300ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList7.value[4],
                              groupValue: controller.radioGroup7.value,
                              onChange: (value) {
                                controller.radioGroup7.value = value;
                              }))
                    ]))
              ]))),
      Container(
          margin: EdgeInsets.only(left: 5.h),
          decoration: AppDecoration.outlineBlack9001
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(children: [
                Container(
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: Text("lbl_current".tr,
                                  style: CustomTextStyles.bodySmallRegular)),
                          SizedBox(height: 1.v),
                          SizedBox(width: 90.h, child: Divider(indent: 2.h)),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.only(left: 2.h, right: 9.h),
                              child: Obx(() => Row(children: [
                                    CustomRadioButton(
                                        text: "lbl_l1".tr,
                                        value: controller.sensorFiveModelObj
                                            .value.radioList8.value[0],
                                        groupValue: controller.current5.value,
                                        onChange: (value) {
                                          controller.current5.value = value;
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: CustomRadioButton(
                                            text: "lbl_l2".tr,
                                            value: controller.sensorFiveModelObj
                                                .value.radioList8.value[1],
                                            groupValue:
                                                controller.current5.value,
                                            onChange: (value) {
                                              controller.current5.value = value;
                                            }))
                                  ]))),
                          SizedBox(height: 10.v),
                          Obx(() => Padding(
                              padding: EdgeInsets.only(left: 2.h),
                              child: CustomRadioButton(
                                  text: "lbl_l3".tr,
                                  value: "lbl_l3".tr,
                                  groupValue: controller.radioGroup8.value,
                                  onChange: (value) {
                                    controller.radioGroup8.value = value;
                                  })))
                        ])),
                SizedBox(height: 8.v),
                Obx(() => Column(children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.h, top: 8.v, right: 42.h),
                          child: CustomRadioButton(
                              text: "lbl_50ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList9.value[2],
                              groupValue: controller.radioGroup9.value,
                              onChange: (value) {
                                controller.radioGroup9.value = value;
                              })),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 12.h, top: 10.v, right: 38.h),
                          child: CustomRadioButton(
                              text: "lbl_100ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList9.value[3],
                              groupValue: controller.radioGroup9.value,
                              onChange: (value) {
                                controller.radioGroup9.value = value;
                              })),
                      Padding(
                          padding: EdgeInsets.fromLTRB(12.h, 10.v, 35.h, 11.v),
                          child: CustomRadioButton(
                              text: "lbl_300ma".tr,
                              value: controller
                                  .sensorFiveModelObj.value.radioList9.value[4],
                              groupValue: controller.radioGroup9.value,
                              onChange: (value) {
                                controller.radioGroup9.value = value;
                              }))
                    ]))
              ])))
    ]);
  }

  /// Section Widget
  Widget _buildFrameRow1() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: Container(
              margin: EdgeInsets.only(right: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("lbl_in4".tr, style: theme.textTheme.titleMedium),
                    Obx(() => CustomSwitch(
                        margin: EdgeInsets.symmetric(vertical: 3.v),
                        value: controller.isSelectedSwitch3.value,
                        onChange: (value) {
                          controller.isSelectedSwitch3.value = value;
                        }))
                  ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("lbl_in5".tr, style: theme.textTheme.titleMedium),
                Obx(() => CustomSwitch(
                    margin: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
                    value: controller.isSelectedSwitch4.value,
                    onChange: (value) {
                      controller.isSelectedSwitch4.value = value;
                    }))
              ]))),
      Expanded(
          child: Container(
              margin: EdgeInsets.only(left: 5.h),
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
              decoration: AppDecoration.outlineBlack
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("lbl_in6".tr, style: theme.textTheme.titleMedium),
                Obx(() => CustomSwitch(
                    margin: EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
                    value: controller.isSelectedSwitch5.value,
                    onChange: (value) {
                      controller.isSelectedSwitch5.value = value;
                    }))
              ])))
    ]);
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

  /// Navigates to the registeredMeansnoidesScreen when the action is triggered.
  onTapSave() {
    Get.toNamed(
      AppRoutes.registeredMeansnoidesScreen,
    );
  }
}
