import '../controller/sensor_controller.dart';
import '../models/sensorcomponent1_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_icon_button.dart';
import 'package:enexpet/widgets/custom_outlined_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Sensorcomponent1ItemWidget extends StatelessWidget {
  Sensorcomponent1ItemWidget(
    this.sensorcomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sensorcomponent1ItemModel sensorcomponent1ItemModelObj;

  var controller = Get.find<SensorController>();

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
                imagePath: ImageConstant.imgRectangle189552,
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
                        controller:
                            sensorcomponent1ItemModelObj.labelController,
                        hintText: "lbl_overall".tr,
                        hintStyle: CustomTextStyles.bodySmallErrorContainer,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 11.v,
                        ),
                      ),
                      SizedBox(height: 96.v),
                      Row(
                        children: [
                          CustomOutlinedButton(
                            width: 61.h,
                            text: "lbl_in1".tr,
                            rightIcon: Container(
                              margin: EdgeInsets.only(),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgNavMeasurement,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                              ),
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
                          CustomOutlinedButton(
                            width: 64.h,
                            text: "lbl_in2".tr,
                            margin: EdgeInsets.only(left: 8.h),
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
                        ],
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
