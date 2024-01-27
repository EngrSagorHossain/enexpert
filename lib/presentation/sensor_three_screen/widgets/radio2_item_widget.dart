import '../controller/sensor_three_controller.dart';
import '../models/radio2_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Radio2ItemWidget extends StatelessWidget {
  Radio2ItemWidget(
    this.radio2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Radio2ItemModel radio2ItemModelObj;

  var controller = Get.find<SensorThreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_50ma".tr,
            value: "lbl_50ma".tr,
            groupValue: radio2ItemModelObj.radioGroup!.value,
            onChange: (value) {
              radio2ItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: radio2ItemModelObj.radioGroup1!.value,
            onChange: (value) {
              radio2ItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: radio2ItemModelObj.radioGroup2!.value,
            onChange: (value) {
              radio2ItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
