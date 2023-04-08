// Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.

import 'dart:io';

void main() {
  stdout.write("Enter a first number: ");
  double fst = double.parse(stdin.readLineSync()!);
  stdout.write("Enter a second number: ");
  double snd = double.parse(stdin.readLineSync()!);
  stdout.write("Enter a operator (+.-.x,/): ");
  String op = stdin.readLineSync()!;
  double result = calc(fst, snd, op);
  print(result);
}

double calc(double fst, double snd, String op) {
  if (op == "+") {
    return fst + snd;
  } else if (op == "-") {
    return fst - snd;
  } else if (op == "x") {
    return fst * snd;
  } else if (op == "/") {
    return fst / snd;
  } else {
    print("invalid operator");
    return 0.0;
  }
}

// import 'dart:io';

// void main() {
//   stdout.write("Enter first number: ");
//   double num1 = double.parse(stdin.readLineSync()!);

//   stdout.write("Enter second number: ");
//   double num2 = double.parse(stdin.readLineSync()!);

//   stdout.write("Enter an operator (+, -, *, /): ");
//   String operator = stdin.readLineSync()!;

//   double result = calc(num1, num2, operator);
//   print("$num1 $operator $num2 = $result");
// }

// double calc(double num1, double num2, String operator) {
//   switch (operator) {
//     case '+':
//       return num1 + num2;
//     case '-':
//       return num1 - num2;
//     case '*':
//       return num1 * num2;
//     case '/':
//       return num1 / num2;
//     default:
//       print("Invalid operator");
//       return 0.0;
//   }
// }
