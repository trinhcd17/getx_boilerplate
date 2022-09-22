import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/app/config/app_font_sizes.dart';
import 'package:getx_boilerplate/app/config/app_text_styles.dart';
import 'package:getx_boilerplate/ui/widgets/custom_inkwell_widget.dart';

class Utils {
  static void showDialog(
    String? message, {
    String title = "THIS IS TITLE",
    bool success = false,
    VoidCallback? onTap,
  }) =>
      Get.defaultDialog(
        barrierDismissible: false,
        onWillPop: () async {
          Get.back();

          onTap?.call();

          return true;
        },
        title: success ? "SUCCESS" : title,
        content: Text(
          message ?? "Something went wrong!",
          textAlign: TextAlign.center,
          maxLines: 6,
          style: AppTextStyle.robotoBold,
        ),
        confirm: Align(
          alignment: Alignment.centerRight,
          child: CustomInkwellWidget.text(
              onTap: () {
                Get.back();

                onTap?.call();
              },
              title: "OK",
              textStyle: AppTextStyle.robotoMedium
                  .copyWith(fontSize: AppFontSizes.fs18)),
        ),
      );
}
