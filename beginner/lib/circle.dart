import 'dart:io';

double cArea(double radius, [double pi = 3.14]) {
  // Optional function to calculate area of circle
  double area = pi * radius * radius;
  return area;
}

void main() {
  // User input
  stdout.write("Enter the radius of the circle: ");
  double radius = double.parse(stdin.readLineSync()!);

  // stdout.write("Do you want to use the default value of pi (3.14)? (y/n): ");
  // String useDefault = stdin.readLineSync()!;

  // Calculation
  double area = cArea(radius);
  // Output
  // ignore: avoid_print
  print("The area of the circle is $area square units.");
}
