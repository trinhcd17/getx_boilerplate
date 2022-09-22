import 'package:get/get.dart';
import 'package:getx_boilerplate/data/models/my_model.dart';

class DetailsController extends GetxController {
  var data = <MyModel>[].obs;

  void changeData(List<MyModel> listData) {
    data(listData);
  }
}
