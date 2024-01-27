import '../controller/measurement_data_controller.dart';
import '../models/powermetrics_item_model.dart';
import '../models/powerquality_item_model.dart';
import '../widgets/powerquality_item_widget.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PowermetricsItemWidget extends StatelessWidget {
  PowermetricsItemWidget(
    this.powermetricsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PowermetricsItemModel powermetricsItemModelObj;

  var controller = Get.find<MeasurementDataController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 370.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15.v),
                      decoration: AppDecoration.outlineBluegray100032.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgLineWeatherFlashlightLine,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                          SizedBox(height: 8.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(left: 370.h),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Obx(
                                    () => Text(
                                      powermetricsItemModelObj
                                          .activePowerValue!.value,
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 17.v,
                                      bottom: 7.v,
                                    ),
                                    child: Obx(
                                      () => Text(
                                        powermetricsItemModelObj
                                            .activePowerUnit!.value,
                                        style:
                                            CustomTextStyles.bodyLargeBlack900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Obx(
                              () => Text(
                                powermetricsItemModelObj
                                    .activePowerLabel!.value,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10.h),
                      padding: EdgeInsets.symmetric(vertical: 15.v),
                      decoration: AppDecoration.outlineBluegray100032.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLineSystemEye2Line,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                          SizedBox(height: 8.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(left: 190.h),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Obx(
                                    () => Text(
                                      powermetricsItemModelObj
                                          .apparentPowerValue!.value,
                                      style: theme.textTheme.headlineLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 17.v,
                                      bottom: 7.v,
                                    ),
                                    child: Obx(
                                      () => Text(
                                        powermetricsItemModelObj
                                            .apparentPowerUnit!.value,
                                        style:
                                            CustomTextStyles.bodyLargeBlack900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Obx(
                              () => Text(
                                powermetricsItemModelObj
                                    .apparentPowerLabel!.value,
                                style: theme.textTheme.bodyLarge,
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
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(left: 370.h),
              child: Obx(
                () => GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 141.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.h,
                  ),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: powermetricsItemModelObj
                      .powerqualityItemList!.value.length,
                  itemBuilder: (context, index) {
                    PowerqualityItemModel model = powermetricsItemModelObj
                        .powerqualityItemList!.value[index];
                    return PowerqualityItemWidget(
                      model,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
