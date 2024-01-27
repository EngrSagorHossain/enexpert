import '../controller/sensor_three_controller.dart';
import '../models/radiooption3_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Radiooption3ItemWidget extends StatelessWidget {
  Radiooption3ItemWidget(
    this.radiooption3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Radiooption3ItemModel radiooption3ItemModelObj;

  var controller = Get.find<SensorThreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_clamp".tr,
          style: CustomTextStyles.bodySmallRegular,
        ),
        SizedBox(height: 8.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_50ma".tr,
            value: "lbl_50ma".tr,
            groupValue: radiooption3ItemModelObj.radioGroup!.value,
            onChange: (value) {
              radiooption3ItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: radiooption3ItemModelObj.radioGroup1!.value,
            onChange: (value) {
              radiooption3ItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: radiooption3ItemModelObj.radioGroup2!.value,
            onChange: (value) {
              radiooption3ItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
