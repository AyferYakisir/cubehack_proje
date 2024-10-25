// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:calculator_app/calculator_text.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String displayText = "";
  String resultText = "";
  List<String> inputs = [];

  List<String> buttons = [
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '0',
    'C',
    '=',
    '+'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Column buildBody() {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    buildCalculatorteText(
                      text: displayText,
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                    buildCalculatorteText(
                      text: resultText,
                      fontSize: 28,
                    ),
                  ],
                ))),
        Expanded(
            child: GridView.builder(
          itemCount: buttons.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                  onPressed: () => buttonPressed(buttons[index]),
                  child: Text(buttons[index],
                      style: const TextStyle(fontSize: 24))),
            );
          },
        ))
      ],
    );
  }

  buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        resultText = '';
        displayText = '';
        inputs.clear();
      } else if (buttonText == '=' && inputs.isNotEmpty) {
        if (displayText.isNotEmpty) {
          inputs.add(displayText);
        }
        calculate();
        resultText = "";
      } else if (buttonText == '+' ||
          buttonText == '-' ||
          buttonText == '*' ||
          buttonText == '/') {
        if (displayText.isNotEmpty && resultText.isNotEmpty) {
          double result = double.parse(resultText) + double.parse(displayText);
          resultText = result.toString();
          inputs = [resultText, buttonText]; // İşlem için inputs güncelleniyor
          displayText =
              ''; //Bir sonra ki değerin girilmesi için displayText temizleniyor
        } else if (displayText.isNotEmpty) {
          inputs.add(displayText);
          inputs.add(buttonText);
          resultText = displayText; //bir önce ki işlemi resultText'e taşıyoruz
          displayText = '';
        }
      } else {
        // Sayılara basıldığında ekrana ekle
        displayText += buttonText;
      }
    });
  }

  void calculate() {
    double result = double.parse(inputs[0]); // ilk sayımız

    for (var i = 1; i < inputs.length; i += 2) {
      String operator = inputs[i];
      double nextNumber = double.parse(inputs[i + 1]); //sonraki sayı

      switch (operator) {
        case '+':
          result += nextNumber;
          break;
        case '-':
          result -= nextNumber;
          break;
        case '*':
          result *= nextNumber;
          break;
        case '/':
          result /= nextNumber;
          break;
      }
    }

    setState(() {
      displayText = result.toString();
      resultText = displayText;
      inputs.clear();
    });
  }
}
