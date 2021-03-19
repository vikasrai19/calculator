import 'package:calculator/controllers/ExpressionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// This button represents the different buttons that are required in the calculator app
class ValueButton extends StatelessWidget {
  final String val;

  ValueButton(this.val);
  ExpressionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // logic to add the values in to the expression when we click on the button
        controller.changeExp(val.toString());
      },
      child: Container(
        alignment: Alignment.center,
        width: Get.width * 0.20,
        height: Get.height * 0.15,
        child: Text(
          this.val.toString(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
