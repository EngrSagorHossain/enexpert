import '../controller/sensor_one_controller.dart';
import '../models/radiooption4_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Radiooption4ItemWidget extends StatelessWidget {
  Radiooption4ItemWidget(
    this.radiooption4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Radiooption4ItemModel radiooption4ItemModelObj;

  var controller = Get.find<SensorOneController>();

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
            groupValue: radiooption4ItemModelObj.radioGroup!.value,
            onChange: (value) {
              radiooption4ItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: radiooption4ItemModelObj.radioGroup1!.value,
            onChange: (value) {
              radiooption4ItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: radiooption4ItemModelObj.radioGroup2!.value,
            onChange: (value) {
              radiooption4ItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
