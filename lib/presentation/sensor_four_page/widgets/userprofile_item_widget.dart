import '../controller/sensor_four_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<SensorFourController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Container(
            height: 260.v,
            width: 350.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Container(
                        height: 260.v,
                        width: 350.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 59.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVector,
                                height: 40.v,
                                width: 132.h,
                              ),
                              SizedBox(height: 24.v),
                              SizedBox(
                                height: 24.v,
                                width: 231.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: 24.v,
                                        width: 231.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.whiteA700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFillDeviceSensorFill,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text(
                                              "msg_expower_2b2_23100_0159".tr,
                                              style: CustomTextStyles
                                                  .titleMediumPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 310.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_measnode".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  SizedBox(height: 3.v),
                                  Container(
                                    width: 310.h,
                                    padding: EdgeInsets.all(7.h),
                                    decoration: AppDecoration
                                        .outlineBluegray10002
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Container(
                                      width: 286.h,
                                      margin: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "lbl_overall".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodySmallErrorContainer
                                            .copyWith(
                                          height: 2.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(left: 390.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_measnode".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                    SizedBox(height: 3.v),
                                    Container(
                                      width: 310.h,
                                      padding: EdgeInsets.all(7.h),
                                      decoration: AppDecoration
                                          .outlineBluegray10002
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder4,
                                      ),
                                      child: Container(
                                        width: 286.h,
                                        margin: EdgeInsets.only(left: 8.h),
                                        child: Text(
                                          "lbl_overall".tr,
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodySmallErrorContainer
                                              .copyWith(
                                            height: 2.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 310.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 12.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: 254.h,
                                        child: Text(
                                          "lbl_clamp".tr,
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles.titleSmall_1
                                              .copyWith(
                                            height: 1.71,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowDownBlueGray700,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 8.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 390.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 12.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: 254.h,
                                        child: Text(
                                          "lbl_clamp".tr,
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles.titleSmall_1
                                              .copyWith(
                                            height: 1.71,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowDownBlueGray700,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 8.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left: 310.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 12.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: 254.h,
                                        child: Text(
                                          "lbl_phase".tr,
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles.titleSmall_1
                                              .copyWith(
                                            height: 1.71,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowDownBlueGray700,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 8.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 390.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 12.v,
                                ),
                                decoration:
                                    AppDecoration.outlineBlack9002.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: 254.h,
                                        child: Text(
                                          "lbl_phase".tr,
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles.titleSmall_1
                                              .copyWith(
                                            height: 1.71,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowDownBlueGray700,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      margin: EdgeInsets.only(left: 8.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
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
}
