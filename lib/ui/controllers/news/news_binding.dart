import 'package:get/instance_manager.dart';
import 'package:getx_boilerplate/ui/controllers/news/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewsController(Get.find()));
  }
}
