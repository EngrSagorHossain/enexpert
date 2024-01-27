import '../controller/sensor_five_controller.dart';
import '../models/userprofile3_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_icon_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<SensorFiveController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle189553,
                height: 260.v,
                width: 20.h,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 25.v,
                  ),
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_measnode".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 5.v),
                      CustomTextFormField(
                        controller: userprofile3ItemModelObj.labelController,
                        hintText: "lbl_overall".tr,
                        hintStyle: CustomTextStyles.bodySmallErrorContainer,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 11.v,
                        ),
                      ),
                      SizedBox(height: 96.v),
                      Padding(
                        padding: EdgeInsets.only(right: 24.h),
                        child: Row(
                          children: [
                            Container(
                              width: 61.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 5.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBluegray100031.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgNavMeasurement,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.v),
                                    child: Text(
                                      "lbl_in1".tr,
                                      style: CustomTextStyles
                                          .bodySmallDMSansOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: CustomIconButton(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                padding: EdgeInsets.all(4.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLineSystemAddLine,
                                ),
                              ),
                            ),
                            Container(
                              width: 64.h,
                              margin: EdgeInsets.only(left: 8.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 5.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBluegray100031.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgNavMeasurement,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 2.h,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      "lbl_in2".tr,
                                      style: CustomTextStyles
                                          .bodySmallDMSansOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: CustomIconButton(
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                padding: EdgeInsets.all(4.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLineSystemAddLine,
                                ),
                              ),
                            ),
                            Container(
                              width: 65.h,
                              margin: EdgeInsets.only(left: 8.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 5.v,
                              ),
                              decoration:
                                  AppDecoration.outlineBluegray100031.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgNavMeasurement,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 2.h,
                                      bottom: 2.v,
                                    ),
                                    child: Text(
                                      "lbl_in3".tr,
                                      style: CustomTextStyles
                                          .bodySmallDMSansOnPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
