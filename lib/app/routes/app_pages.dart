import 'package:get/get.dart';
import 'package:getx_boilerplate/ui/controllers/news/news_binding.dart';
import 'package:getx_boilerplate/ui/views/news/news_page.dart';

import '../../ui/controllers/details/details_binding.dart';
import '../../ui/controllers/home/home_binding.dart';
import '../../ui/views/details/details_page.dart';
import '../../ui/views/home/home_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.news,
      page: () => const NewsPage(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: Routes.details,
      page: () => const DetailsPage(),
      binding: DetailsBinding(),
    ),
  ];
}
