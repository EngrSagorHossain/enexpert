import '../controller/registered_meansnoides_controller.dart';
import '../models/l1radio1_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:enexpet/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class L1radio1ItemWidget extends StatelessWidget {
  L1radio1ItemWidget(
    this.l1radio1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  L1radio1ItemModel l1radio1ItemModelObj;

  var controller = Get.find<RegisteredMeansnoidesController>();

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
            groupValue: l1radio1ItemModelObj.radioGroup!.value,
            onChange: (value) {
              l1radio1ItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_100ma".tr,
            value: "lbl_100ma".tr,
            groupValue: l1radio1ItemModelObj.radioGroup1!.value,
            onChange: (value) {
              l1radio1ItemModelObj.radioGroup1!.value = value;
            },
          ),
        ),
        SizedBox(height: 10.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_300ma".tr,
            value: "lbl_300ma".tr,
            groupValue: l1radio1ItemModelObj.radioGroup2!.value,
            onChange: (value) {
              l1radio1ItemModelObj.radioGroup2!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
