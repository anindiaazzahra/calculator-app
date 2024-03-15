import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{
  final computationController = TextEditingController();

  setValue(String value){
    String str = computationController.text;

    switch(value){
      case "C":
        computationController.clear();
        // computationController.text = str.substring(0, str.length - 1);
        break;
      case "=":
        compute();
        break;
      case "check":
        checkNumber();
        break;
      default:
        computationController.text += value;
    }
  }

  compute(){
    String text = computationController.text;
    computationController.text = text.interpret().toString();
  }

  void checkNumber() {
    String text = computationController.text;
    int number = int.tryParse(computationController.text) ?? 0;
    if (number % 2 == 0) {
      computationController.text = 'Genap';
    } else {
      computationController.text = 'Ganjil';
    }
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    computationController.dispose();
  }
}