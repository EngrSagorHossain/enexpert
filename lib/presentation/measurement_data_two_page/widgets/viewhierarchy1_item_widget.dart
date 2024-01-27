import '../controller/measurement_data_two_controller.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

  var controller = Get.find<MeasurementDataTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
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
            padding: EdgeInsets.only(left: 11.h),
            child: Obx(
              () => Text(
                viewhierarchy1ItemModelObj.textIN1!.value,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    viewhierarchy1ItemModelObj.textEightyEight!.value,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 4.h,
                    top: 17.v,
                    bottom: 6.v,
                  ),
                  child: Obx(
                    () => Text(
                      viewhierarchy1ItemModelObj.textCos!.value,
                      style: CustomTextStyles.bodyLargeBlack900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLineDevelopmen,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Obx(
                    () => Text(
                      viewhierarchy1ItemModelObj.textCosPhi!.value,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Obx(
              () => Text(
                viewhierarchy1ItemModelObj.textCos1!.value,
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Obx(
                      () => Text(
                        viewhierarchy1ItemModelObj.textOne!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Obx(
                      () => Text(
                        viewhierarchy1ItemModelObj.textSeventyFive!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Obx(
                      () => Text(
                        viewhierarchy1ItemModelObj.textFifty!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Obx(
                      () => Text(
                        viewhierarchy1ItemModelObj.textTwentyFive!.value,
                        style: theme.textTheme.bodySmall,
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
                                padding: EdgeInsets.only(bottom: 20.v),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 152.h,
                                      child: Divider(),
                                    ),
                                    SizedBox(height: 19.v),
                                    SizedBox(
                                      width: 152.h,
                                      child: Divider(),
                                    ),
                                  ],
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
                                imagePath: viewhierarchy1ItemModelObj
                                    .imageVector1064!.value,
                                height: 36.v,
                                width: 152.h,
                                radius: BorderRadius.circular(
                                  12.h,
                                ),
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 14.v),
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
                            viewhierarchy1ItemModelObj.textZero!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            viewhierarchy1ItemModelObj.textFifteen!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            viewhierarchy1ItemModelObj.textThirty!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            viewhierarchy1ItemModelObj.textFortyFive!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            viewhierarchy1ItemModelObj.textSixty!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Obx(
                    () => Text(
                      viewhierarchy1ItemModelObj.textLast1Hour!.value,
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
