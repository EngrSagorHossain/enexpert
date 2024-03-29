import '../controller/measurement_data_measnode_one_controller.dart';
import '../models/powerusageslider2_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Powerusageslider2ItemWidget extends StatelessWidget {
  Powerusageslider2ItemWidget(
    this.powerusageslider2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Powerusageslider2ItemModel powerusageslider2ItemModelObj;

  var controller = Get.find<MeasurementDataMeasnodeOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBluegray100032.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              children: [
                Obx(
                  () => Text(
                    powerusageslider2ItemModelObj.eightHundredFive!.value,
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
                      powerusageslider2ItemModelObj.kw!.value,
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
                Obx(
                  () => CustomImageView(
                    imagePath: powerusageslider2ItemModelObj
                        .lineWeatherFlashlightLine!.value,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Obx(
                    () => Text(
                      powerusageslider2ItemModelObj.activePower!.value,
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
                powerusageslider2ItemModelObj.kW!.value,
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
                  bottom: 25.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Obx(
                        () => Text(
                          powerusageslider2ItemModelObj.oneHundred!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          powerusageslider2ItemModelObj.seventyFive!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          powerusageslider2ItemModelObj.fifty!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Obx(
                        () => Text(
                          powerusageslider2ItemModelObj.twentyFive!.value,
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
                                imagePath:
                                    powerusageslider2ItemModelObj.vector!.value,
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
                            powerusageslider2ItemModelObj.zero!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            powerusageslider2ItemModelObj.fifteen!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            powerusageslider2ItemModelObj.thirty!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            powerusageslider2ItemModelObj.fortyFive!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Obx(
                          () => Text(
                            powerusageslider2ItemModelObj.sixty!.value,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 62.h),
              child: Obx(
                () => Text(
                  powerusageslider2ItemModelObj.lastHour!.value,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
