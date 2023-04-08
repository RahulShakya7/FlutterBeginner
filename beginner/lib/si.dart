import 'dart:io';

double si(double principal, double rate, double time) {
  // Function to calculate simple interest
  double interest = (principal * rate * time) / 100;
  return interest;
}

void main() {
  // User input
  stdout.write("Enter principal amount: ");
  double principal = double.parse(stdin.readLineSync()!);

  stdout.write("Enter rate of interest: ");
  double rate = double.parse(stdin.readLineSync()!);

  stdout.write("Enter time period (in years): ");
  double time = double.parse(stdin.readLineSync()!);

  // Calculation
  double interest = si(principal, rate, time);

  // Output
  // ignore: avoid_print
  print("Simple interest: $interest");
}
