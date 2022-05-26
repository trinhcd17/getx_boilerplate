import 'package:get/get.dart';
import 'package:getx_boilerplate/controller/details_controller.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() {
      return DetailsController();
    });
  }
}
