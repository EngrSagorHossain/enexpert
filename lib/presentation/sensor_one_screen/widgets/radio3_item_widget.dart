import '../controller/sensor_one_controller.dart';
import '../models/radio3_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Radio3ItemWidget extends StatelessWidget {
  Radio3ItemWidget(
    this.radio3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Radio3ItemModel radio3ItemModelObj;

  var controller = Get.find<SensorOneController>();

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
            groupValue: radio3ItemModelObj.radioGroup!.value,
            onChange: (value) {
              radio3ItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: radio3ItemModelObj.radioGroup1!.value,
            onChange: (value) {
              radio3ItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: radio3ItemModelObj.radioGroup2!.value,
            onChange: (value) {
              radio3ItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
