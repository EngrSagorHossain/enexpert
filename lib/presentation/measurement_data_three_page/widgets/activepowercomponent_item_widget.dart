import '../controller/measurement_data_three_controller.dart';
import '../models/activepowercomponent_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ActivepowercomponentItemWidget extends StatelessWidget {
  ActivepowercomponentItemWidget(
    this.activepowercomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ActivepowercomponentItemModel activepowercomponentItemModelObj;

  var controller = Get.find<MeasurementDataThreeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlineBluegray100032.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => CustomImageView(
                imagePath:
                    activepowercomponentItemModelObj.activePowerImage!.value,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            SizedBox(height: 9.v),
            Row(
              children: [
                Obx(
                  () => Text(
                    activepowercomponentItemModelObj.activePowerValue!.value,
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
                      activepowercomponentItemModelObj.activePowerUnit!.value,
                      style: CustomTextStyles.bodyLargeBlack900,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.v),
            Obx(
              () => Text(
                activepowercomponentItemModelObj.activePowerText!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
