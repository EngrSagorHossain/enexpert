import 'package:enexpet/data/models/selectionPopupModel/selection_popup_model.dart';
import 'userprofile4_item_model.dart';
import 'l1radio1_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [registered_meansnoides_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RegisteredMeansnoidesModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<String>> radioList = Rx(["lbl_l1", "lbl_l2"]);

  Rx<List<String>> radioList1 = Rx(["lbl_50ma", "lbl_100ma", "lbl_300ma"]);

  Rx<List<String>> radioList2 = Rx(["lbl_l1", "lbl_l2"]);

  Rx<List<String>> radioList3 = Rx(["lbl_50ma", "lbl_100ma", "lbl_300ma"]);

  Rx<List<String>> radioList4 = Rx(["lbl_l1", "lbl_l2"]);

  Rx<List<String>> radioList5 = Rx(["lbl_50ma", "lbl_100ma", "lbl_300ma"]);

  Rx<List<Userprofile4ItemModel>> userprofile4ItemList =
      Rx(List.generate(1, (index) => Userprofile4ItemModel()));

  Rx<List<String>> radioList6 = Rx(["lbl_l1", "lbl_l2"]);

  Rx<List<L1radio1ItemModel>> l1radio1ItemList =
      Rx(List.generate(1, (index) => L1radio1ItemModel()));

  Rx<List<String>> radioList7 = Rx(["lbl_l1", "lbl_l2"]);

  Rx<List<String>> radioList8 = Rx(["lbl_50ma", "lbl_100ma", "lbl_300ma"]);

  Rx<List<String>> radioList9 = Rx(["lbl_l1", "lbl_l2"]);

  Rx<List<String>> radioList10 = Rx(["lbl_50ma", "lbl_100ma", "lbl_300ma"]);
}
