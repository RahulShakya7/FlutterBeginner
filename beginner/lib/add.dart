void main() {
  int? first;
  int? second;

  first = 4;
  // b = 3;
  // int result = a + b!;
  // ignore: avoid_print
  int result = add(first, second ?? 0);
  // 
  print("Addition : $result");

  // int result = add(a, b);
}

int add(int a, int b) {
  return a + b;
}
