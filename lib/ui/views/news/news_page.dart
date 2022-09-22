import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../controllers/news/news_controller.dart';
import 'news_item.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Page'),
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
              child: GetBuilder<NewsController>(builder: (builder) {
                if (controller.listArticle.isEmpty) {
                  return const Center(child: Text('List is empty'));
                } else {
                  return ListView.builder(
                    itemCount: controller.listArticle.length,
                    itemBuilder: (context, index) {
                      final data = controller.listArticle[index];
                      return NewItem(data: data);
                    },
                  );
                }
              }),
            ),
            TextButton(
                onPressed: () async {
                  await controller.getNews();
                },
                child: const Text('Call API')),
          ],
        ),
      ),
    );
  }
}
