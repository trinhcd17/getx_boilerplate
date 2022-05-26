import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:getx_boilerplate/common/styles/theme.dart';
import 'package:getx_boilerplate/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
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
