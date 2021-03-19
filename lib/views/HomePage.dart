import 'package:calculator/controllers/ExpressionController.dart';
import 'package:calculator/widgets/ButtonLayout.dart';
import 'package:calculator/widgets/ExpressionContainer.dart';
import 'package:calculator/widgets/ExpressionValue.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // Create a instance of the expression Controller
  final expressionController = Get.put(ExpressionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            // This box displays the expression that we enter into the calculator
            ExpressionContainer(),
            // The value of the evaluated expression will be displayed here
            ExpressionValue(),
            // Now lets create the layout for different buttons
            ButtonLayout(),
          ],
        ),
      ),
    );
  }
}
