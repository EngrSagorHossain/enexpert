import '../controller/sensor_two_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_icon_button.dart';
import 'package:enexpet/widgets/custom_outlined_button.dart';
import 'package:enexpet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
    this.onTapBtnLineSystemAddLine,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<SensorTwoController>();

  VoidCallback? onTapBtnLineSystemAddLine;

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
                imagePath: ImageConstant.imgRectangle18955,
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
                        controller: userprofile1ItemModelObj.labelController,
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
                              onTap: () {
                                onTapBtnLineSystemAddLine!.call();
                              },
                              child: CustomImageView(
                                imagePath: ImageConstant.imgLineSystemAddLine,
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
                                imagePath: ImageConstant.imgLineSystemMinusLine,
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
