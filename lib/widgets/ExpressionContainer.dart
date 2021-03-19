import 'package:calculator/controllers/ExpressionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpressionContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.2,
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      alignment: Alignment.centerRight,
      child: GetBuilder<ExpressionController>(
        builder: (controller) {
          return Text(
            // here we check whether there is any value in expression variable,
            // if there is any value we display the value, else we just display 0
            controller.exp.length == 0 ? "0" : controller.exp,
            maxLines: 2,
            textAlign: TextAlign.right,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 35.0,
              fontWeight: FontWeight.w700,
            ),
          );
        },
      ),
    );
  }
}
