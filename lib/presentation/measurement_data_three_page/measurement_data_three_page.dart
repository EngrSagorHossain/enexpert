import '../measurement_data_three_page/widgets/activepowercomponent_item_widget.dart';
import 'controller/measurement_data_three_controller.dart';
import 'models/activepowercomponent_item_model.dart';
import 'models/measurement_data_three_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

class MeasurementDataThreePage extends StatelessWidget {
  MeasurementDataThreePage({Key? key})
      : super(
          key: key,
        );

  MeasurementDataThreeController controller =
      Get.put(MeasurementDataThreeController(MeasurementDataThreeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildActivePowerComponent(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActivePowerComponent() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 141.v,
              crossAxisCount: 7,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 10.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.measurementDataThreeModelObj.value
                .activepowercomponentItemList.value.length,
            itemBuilder: (context, index) {
              ActivepowercomponentItemModel model = controller
                  .measurementDataThreeModelObj
                  .value
                  .activepowercomponentItemList
                  .value[index];
              return ActivepowercomponentItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
