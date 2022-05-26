import 'package:get/get.dart';

import '../bindings/details_binding.dart';
import '../bindings/home_binding.dart';
import '../ui/views/details_page/details_page.dart';
import '../ui/views/home_page/home_page.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.details,
      page: () => const DetailsPage(),
      binding: DetailsBinding(),
    ),
  ];
}
