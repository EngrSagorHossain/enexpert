import '../controller/sensor_five_controller.dart';
import '../models/radiooption6_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Radiooption6ItemWidget extends StatelessWidget {
  Radiooption6ItemWidget(
    this.radiooption6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Radiooption6ItemModel radiooption6ItemModelObj;

  var controller = Get.find<SensorFiveController>();

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
            groupValue: radiooption6ItemModelObj.radioGroup!.value,
            onChange: (value) {
              radiooption6ItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: radiooption6ItemModelObj.radioGroup1!.value,
            onChange: (value) {
              radiooption6ItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: radiooption6ItemModelObj.radioGroup2!.value,
            onChange: (value) {
              radiooption6ItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
