import '../controller/sensor_controller.dart';
import '../models/radiooption5_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Radiooption5ItemWidget extends StatelessWidget {
  Radiooption5ItemWidget(
    this.radiooption5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Radiooption5ItemModel radiooption5ItemModelObj;

  var controller = Get.find<SensorController>();

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
            groupValue: radiooption5ItemModelObj.radioGroup!.value,
            onChange: (value) {
              radiooption5ItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: radiooption5ItemModelObj.radioGroup1!.value,
            onChange: (value) {
              radiooption5ItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: radiooption5ItemModelObj.radioGroup2!.value,
            onChange: (value) {
              radiooption5ItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
