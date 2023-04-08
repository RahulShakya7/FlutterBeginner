void main() {
  // Arithmatic am = Arithmatic(23, 32);
  // am.num2 = 2;

  // Arithmatic am = Arithmatic.p1(2);

  Arithmatic am = Arithmatic(num1: 3, num2: 4);

  print("Sum :");
  print(am.add());
  print("Multiplication :");
  print(am.multiply());
  print("Subtraction :");
  print(am.sub());
  print("Division :");
  print(am.divide());
}

class Arithmatic {
  int num1;
  int num2;

  // Arithmatic(this.num1, this.num2);

  // Constructor Overloading / named constructor
  // Arithmatic.p1(this.num2) : num1 = 0;
  // Arithmatic.p2(this.num1) : num2 = 0;

  // Named Construstor
  Arithmatic({required this.num1, required this.num2});

  int multiply() => num1 * num2;

  int add() => num1 + num2;

  int sub() => num1 - num2;

  double divide() => num1 / num2;
}
