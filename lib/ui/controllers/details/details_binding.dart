import 'package:get/instance_manager.dart';
import 'package:getx_boilerplate/ui/controllers/details/details_controller.dart';

class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailsController());
  }
}
