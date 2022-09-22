import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/app/config/app_text_styles.dart';
import 'package:getx_boilerplate/app/routes/app_pages.dart';

import '../../controllers/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<HomeController>(
              initState: (state) {
                Get.find<HomeController>();
              },
              builder: (_) {
                return Text("${controller.number()}",
                    style: AppTextStyle.robotoBold);
              },
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.news);
              },
              child: const Text('Next screen'),
            )
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          controller.changeValue(value: controller.number() + 1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
