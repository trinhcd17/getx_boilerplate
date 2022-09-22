import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_boilerplate/app/utils/logger.dart';
import 'package:getx_boilerplate/data/provider/api/api_provider.dart';

import '../../controllers/details/details_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.8,
              width: double.infinity,
              child: GetX<DetailsController>(builder: (builder) {
                if (controller.data.isEmpty) {
                  return Container();
                } else {
                  return ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) {
                      final data = controller.data()[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Image.network(
                          data.url ?? "",
                          height: 200,
                          width: 200,
                        ),
                      );
                    },
                  );
                }
              }),
            ),
            TextButton(
                onPressed: () async {
                  final api = APIProvider.instance;
                  final res = await api
                      .onGet("https://newsapi.org/v2/top-headlines?country=us");
                  logger.d(res);
                },
                child: const Text('Call API')),
          ],
        ),
      ),
    );
  }
}
