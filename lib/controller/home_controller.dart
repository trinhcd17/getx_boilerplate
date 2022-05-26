import 'package:get/get.dart';

class HomeController extends GetxController {
  var number = 0.obs;

  void changeValue({required int value}) {
    number(value);
  }
}
