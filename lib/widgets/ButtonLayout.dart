import 'package:calculator/controllers/ExpressionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ValueButton.dart';

class ButtonLayout extends StatelessWidget {
  ExpressionController expController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey[200],
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    ValueButton("7"),
                    ValueButton("8"),
                    ValueButton("9"),
                    ValueButton("+"),
                  ],
                ),
                Row(
                  children: [
                    ValueButton("4"),
                    ValueButton("5"),
                    ValueButton("6"),
                    ValueButton("*"),
                  ],
                ),
                Row(
                  children: [
                    ValueButton("1"),
                    ValueButton("2"),
                    ValueButton("3"),
                    ValueButton("/"),
                  ],
                ),
                Row(
                  children: [
                    ValueButton("0"),
                    ValueButton("."),
                    ValueButton("-"),
                    // we will be changing the last button as it requires some extra functionality to perform
                    GestureDetector(
                      onTap: () {
                        // Binding the eval exp functionality
                        expController.evalExp();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: Get.height * 0.15,
                        width: Get.width * 0.2,
                        child: Text(
                          "=",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // Binding the backspace functionality
                // its working
                expController.eraseCharacter();
              },
              onLongPress: () {
                // Adding the reset functionality
                expController.resetExp();
              },
              child: Container(
                height: Get.height * 0.15,
                width: Get.width * 0.2,
                child: Icon(
                  Icons.backspace,
                  color: Colors.black,
                  size: 30.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
