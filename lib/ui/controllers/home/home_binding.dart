import 'package:get/instance_manager.dart';
import 'package:getx_boilerplate/ui/controllers/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
