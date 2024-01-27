import '../controller/measurement_data_two_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<MeasurementDataTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineBluegray100032.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Obx(
              () => Text(
                viewhierarchyItemModelObj.textIN1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    viewhierarchyItemModelObj.textEightHundredFive!.value,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 16.v,
                    bottom: 7.v,
                  ),
                  child: Obx(
                    () => Text(
                      viewhierarchyItemModelObj.textKw!.value,
                      style: CustomTextStyles.bodyLargeBlack900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLineWeatherFlashlightLine,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Obx(
                    () => Text(
                      viewhierarchyItemModelObj.textActivePower!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Obx(
              () => Text(
                viewhierarchyItemModelObj.textkW!.value,
                style: CustomTextStyles.bodySmallRegular_1,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10.v,
                  bottom: 45.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Obx(
                        () => Text(
                          viewhierarchyItemModelObj.textOneHundred!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          viewhierarchyItemModelObj.textSeventyFive!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          viewhierarchyItemModelObj.textFifty!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          viewhierarchyItemModelObj.textTwentyFive!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 96.v,
                        width: 152.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup930,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 76.h,
                                margin: EdgeInsets.symmetric(horizontal: 38.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 96.v,
                                      child: VerticalDivider(
                                        width: 1.h,
                                        thickness: 1.v,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 50,
                                    ),
                                    SizedBox(
                                      height: 96.v,
                                      child: VerticalDivider(
                                        width: 1.h,
                                        thickness: 1.v,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 50,
                                    ),
                                    SizedBox(
                                      height: 96.v,
                                      child: VerticalDivider(
                                        width: 1.h,
                                        thickness: 1.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 19.v),
                                child: SizedBox(
                                  width: 152.h,
                                  child: Divider(),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 39.v),
                                child: SizedBox(
                                  width: 152.h,
                                  child: Divider(),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 36.v),
                                child: SizedBox(
                                  width: 152.h,
                                  child: Divider(),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 16.v),
                                child: SizedBox(
                                  width: 152.h,
                                  child: Divider(),
                                ),
                              ),
                            ),
                            Obx(
                              () => CustomImageView(
                                imagePath: viewhierarchyItemModelObj
                                    .imageVector1064!.value,
                                height: 43.v,
                                width: 152.h,
                                radius: BorderRadius.circular(
                                  12.h,
                                ),
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 20.v),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 96.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 160.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            viewhierarchyItemModelObj.textZero!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            viewhierarchyItemModelObj.textFifteen!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            viewhierarchyItemModelObj.textThirty!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            viewhierarchyItemModelObj.textFortyFive!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            viewhierarchyItemModelObj.textSixty!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      viewhierarchyItemModelObj.textLast1Hour!.value,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
