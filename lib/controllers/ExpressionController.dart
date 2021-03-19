import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class ExpressionController extends GetxController {
  // Initially the expresion will be blank
  String exp = "";
  // value will also be blank or null
  String expVal = "";
  bool isStart = true;

  // Logic to change the state of the expression
  void changeExp(String s) {
    if (isStart == true) {
      exp == "";
      update();
      changeIsStart(false);
    }
    exp += s;
    update();
  }

  void changeIsStart(bool val) {
    isStart = val;
  }

  // Resetting the exp value to intial state
  void resetExp() {
    exp = "";
    expVal = "";
    update();
  }

  // This is the logic for the backspace button
  void eraseCharacter() {
    if (exp != null && exp.length > 0) {
      exp = exp.substring(0, exp.length - 1);
      update();
      changeIsStart(false);
    }
  }

  // Lets build the logic for evaluating the expression
  void evalExp() {
    Parser p = Parser();
    Expression expV = p.parse(exp);
    ContextModel cm = ContextModel();
    expVal = expV.evaluate(EvaluationType.REAL, cm).toString();
    update();
    changeIsStart(true);
  }
}
