import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../data/models/new_model.dart';
import '../../../data/provider/api/api_provider.dart';

class NewsController extends GetxController {
  final APIProvider api;
  List<Articles> listArticle = [];
  NewsController(this.api);

  setListArticle(List<Articles> data) {
    listArticle = data;
    update();
  }

  Future<void> getNews() async {
    final res =
        await api.onGet("https://newsapi.org/v2/top-headlines?country=us");
    final response = NewModel.fromJson(res);
    setListArticle(response.articles ?? []);
  }
}
