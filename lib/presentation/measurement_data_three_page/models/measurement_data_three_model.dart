import '../../../core/app_export.dart';
import 'activepowercomponent_item_model.dart';

/// This class defines the variables used in the [measurement_data_three_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MeasurementDataThreeModel {
  Rx<List<ActivepowercomponentItemModel>> activepowercomponentItemList = Rx([
    ActivepowercomponentItemModel(
        activePowerImage: ImageConstant.imgLineWeatherFlashlightLine.obs,
        activePowerValue: "120,5".obs,
        activePowerUnit: "Kw".obs,
        activePowerText: "Active Power".obs),
    ActivepowercomponentItemModel(
        activePowerImage: ImageConstant.imgLineSystemEye2Line.obs,
        activePowerValue: "125".obs,
        activePowerUnit: "Kw".obs,
        activePowerText: "Apparent Power".obs),
    ActivepowercomponentItemModel(
        activePowerImage: ImageConstant.imgLineBusinessMedalLine.obs,
        activePowerText: "Power Quality".obs),
    ActivepowercomponentItemModel(
        activePowerImage: ImageConstant.imgLineDeviceWir.obs,
        activePowerText: "V1".obs),
    ActivepowercomponentItemModel(
        activePowerImage: ImageConstant.imgLineDeviceWir.obs,
        activePowerText: "V2".obs),
    ActivepowercomponentItemModel(
        activePowerImage: ImageConstant.imgLineDeviceWir.obs,
        activePowerText: "V3".obs)
  ]);
}
