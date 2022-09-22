import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_boilerplate/data/provider/api/api_provider.dart';

import 'app/routes/app_pages.dart';
import 'app/config/app_theme.dart';

Future<void> main() async {
  await initDependencies();
  runApp(const MyApp());
}

Future<void> initDependencies() async {
  await GetStorage.init();
  final api = Get.put(APIProvider());
  api.updateHeader("67a1e827336c40c8b0ed64e953a749a1");
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        title: "GetX Boilerplate",
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        initialRoute: Routes.initial,
        getPages: AppPages.pages,
      ),
    );
  }
}
