import '../controller/measurement_data_controller.dart';
import '../models/powerquality_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PowerqualityItemWidget extends StatelessWidget {
  PowerqualityItemWidget(
    this.powerqualityItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PowerqualityItemModel powerqualityItemModelObj;

  var controller = Get.find<MeasurementDataController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineBluegray100032.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: powerqualityItemModelObj.userImage!.value,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          SizedBox(height: 8.v),
          Obx(
            () => Text(
              powerqualityItemModelObj.dynamicText!.value,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              powerqualityItemModelObj.dynamicText1!.value,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
