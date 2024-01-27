import '../controller/registered_meansnoides_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegisteredMeansnoidesScreen.
///
/// This class ensures that the RegisteredMeansnoidesController is created when the
/// RegisteredMeansnoidesScreen is first loaded.
class RegisteredMeansnoidesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisteredMeansnoidesController());
  }
}
