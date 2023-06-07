import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  final numController = TextEditingController();
  double? fst, snd;
  double result = 0;
  String operator = '';

  calculate() {
    switch (operator) {
      case '+':
        setState(() {
          result = fst! + snd!;
          _textController.text = (result).toString();
        });
        break;
      case '-':
        setState(() {
          result = fst! - snd!;
          _textController.text = (result).toString();
        });
        break;
      case '*':
        setState(() {
          result = fst! * snd!;
          _textController.text = (result).toString();
        });
        break;
      case '/':
        setState(() {
          result = fst! / snd!;
          _textController.text = (result).toString();
        });
        break;
    }
  }

  final _textController = TextEditingController();
  List<String> items = [
    'c',
    '*',
    '/',
    '<-',
    '1',
    '2',
    '3',
    '+',
    '4',
    '5',
    '6',
    '-',
    '7',
    '8',
    '9',
    '~',
    '%',
    '0',
    '.',
    '='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(children: [
        TextFormField(
          controller: _textController,
          textAlign: TextAlign.right,
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8),
            // crossAxisCount: 4,
            // mainAxisSpacing: 5,
            // crossAxisSpacing: 5,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  if (checknum(items[index])) {
                    _textController.text =
                        '${_textController.text}${items[index]}';
                  } else if (checkoperator(items[index])) {
                    fst = double.parse(_textController.text);
                    operator = items[index];
                    _textController.text = "";
                  } else if (items[index] == '=') {
                    snd = double.parse(_textController.text);
                    calculate();
                  } else if (items[index] == 'c') {
                    _textController.text = '';
                  } else if (items[index] == '<-') {
                    _textController.text = _textController.text
                        .substring(0, _textController.text.length - 1);
                  } else if (items[index] == '~') {
                    Navigator.pushNamed(context, '/imageRoute');
                  }
                },
                child: Text(
                  items[index],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            // children: [
            //   for (int i = 0; i < items.length; i++)
            //     ElevatedButton(
            //       style: const ButtonStyle(
            //           backgroundColor: MaterialStatePropertyAll(Colors.black)),
            //       onPressed: () {
            //         if (checknum(items[i])) {
            //           _textController.text =
            //               '${_textController.text}${items[i]}';
            //         } else if (checkoperator(items[i])) {
            //           fst = double.parse(_textController.text);
            //           operator = items[i];
            //           _textController.text = "";
            //         } else if (items[i] == '=') {
            //           snd = double.parse(_textController.text);
            //           calculate();
            //         } else if (items[i] == 'c') {
            //           _textController.text = '';
            //         } else if (items[i] == '<-') {
            //           _textController.text = _textController.text
            //               .substring(0, _textController.text.length - 1);
            //         }
            //       },
            //       child: Text(
            //         items[i],
            //         style: const TextStyle(
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     )
            // ],
          ),
        )
      ]),
    );
  }

  bool checknum(String value) {
    return int.tryParse(value) != null;
  }

  bool checkoperator(String value) {
    List<String> lstoperator = ["+", "-", "*", "/"];
    return lstoperator.contains(value);
  }
}
