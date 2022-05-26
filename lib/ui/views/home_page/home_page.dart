import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/common/styles/app_text_style.dart';
import 'package:getx_boilerplate/common/styles/dimens.dart';
import 'package:getx_boilerplate/common/values/app_colors.dart';
import 'package:getx_boilerplate/controller/home_controller.dart';
import 'package:getx_boilerplate/routes/app_pages.dart';

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
                return Text(
                  "${controller.number()}",
                  style: robotoBold.copyWith(
                    fontSize: Dimens.fs18,
                    color: AppColors.black,
                  ),
                );
              },
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.details);
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
