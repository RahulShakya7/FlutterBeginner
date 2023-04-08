// Write a dart program to generate multiplication tables of 1-9.

void main() {
  int num = 9;
  table(num);
}

void table(int num) {
  for (int i = 1; i <= num; i++) {
    print("Multiplication table of $i:");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
  }
}
