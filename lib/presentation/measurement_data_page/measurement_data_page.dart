import '../measurement_data_page/widgets/powermetrics_item_widget.dart';
import 'controller/measurement_data_controller.dart';
import 'models/measurement_data_model.dart';
import 'models/powermetrics_item_model.dart';
import 'package:enexpet/core/app_export.dart';
import 'package:flutter/material.dart';

class MeasurementDataPage extends StatelessWidget {
  MeasurementDataPage({Key? key})
      : super(
          key: key,
        );

  MeasurementDataController controller =
      Get.put(MeasurementDataController(MeasurementDataModel().obs));

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
              _buildPowerMetrics(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPowerMetrics() {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 440.v,
        child: Obx(
          () => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 40.h,
              );
            },
            itemCount: controller.measurementDataModelObj.value
                .powermetricsItemList.value.length,
            itemBuilder: (context, index) {
              PowermetricsItemModel model = controller.measurementDataModelObj
                  .value.powermetricsItemList.value[index];
              return PowermetricsItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
