import '../../../core/app_export.dart';
import 'availablepagelist_item_model.dart';

/// This class defines the variables used in the [configure_wifi_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ConfigureWifiFourModel {
  Rx<List<AvailablepagelistItemModel>> availablepagelistItemList = Rx([
    AvailablepagelistItemModel(
        pageTitle: "Page".obs,
        functionTitle: "Function".obs,
        slashText: "/".obs,
        menuLabel: "Menu page".obs)
  ]);
}
