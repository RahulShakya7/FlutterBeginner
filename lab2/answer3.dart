// Create a program that reads a list of expenses amount using user input and prints the total.
import 'dart:io';

void main(List<String> args) {
  List<double> expenses = [];
  while (true) {
    stdout.write('Enter an expense (or "done" to finish): ');
    String exp = stdin.readLineSync()!;
    if (exp == 'done') {
      break;
    }
    expenses.add(double.parse(exp));
  }
  total(expenses);
}

void total(List<double> expenses) {
  double totalExpenses = expenses.reduce((a, b) => a + b);
  print('Total expenses: \Rs.${totalExpenses.toStringAsFixed(2)}');
}
