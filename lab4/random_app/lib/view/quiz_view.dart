import 'package:flutter/material.dart';

import '../model/quiz_randomizer.dart';

class RandomNumberView extends StatefulWidget {
  const RandomNumberView({super.key});

  @override
  State<RandomNumberView> createState() => _RandomNumberViewState();
}

class _RandomNumberViewState extends State<RandomNumberView> {
  var num1 = 1;
  var num2 = 2;

  var correctAnswer = 0;
  var wrongAnswer = 0;

  var counter = 0;

  late Randomizer obj;

  void generateNumber() {
    obj = Randomizer();
    setState(() {
      List<int> lstNum = obj.generateRandom();
      num1 = lstNum[0];
      num2 = lstNum[1];
    });
  }

  void checkAnswer({var selected = 0, var remaining = 0}) {
    if (++counter > 10) {
      restartGame();
    } else {
      if (selected > remaining) {
        correctAnswer++;
      } else if (selected < remaining) {
        wrongAnswer++;
      }
      generateNumber();
    }
  }

  void restartGame() {
    correctAnswer = 0;
    wrongAnswer = 0;
    counter = 0;

    generateNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const SizedBox(height: 170),
                  ElevatedButton(
                    onPressed: () {
                      checkAnswer(selected: num1, remaining: num2);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 130),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: '$num1',
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 170),
                  ElevatedButton(
                    onPressed: () {
                      checkAnswer(selected: num2, remaining: num1);
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(120, 130),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: '$num2',
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Result:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Correct Answers : $correctAnswer',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Incorrect Answers : $wrongAnswer',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Clicks : $counter',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.cyan,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  restartGame();
                },
                style: const ButtonStyle(),
                child: const Text('Restart Game'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
