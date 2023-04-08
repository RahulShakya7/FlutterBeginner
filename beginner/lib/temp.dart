import 'dart:io';

double fToC(double fahrenheit) {
  // Function to convert Fahrenheit to Celsius
  double celsius = (fahrenheit - 32) * 5 / 9;
  return celsius;
}

void main() {
  // User input
  stdout.write("Enter temperature in Fahrenheit: ");
  double fahrenheit = double.parse(stdin.readLineSync()!);

  // Conversion
  double celsius = fToC(fahrenheit);

  // Output
  // ignore: avoid_print
  print("$fahrenheit degrees Fahrenheit is equal to $celsius degrees Celsius.");
}
