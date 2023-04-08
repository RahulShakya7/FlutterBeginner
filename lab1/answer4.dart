// Write a dart program to print your name 100 times.
void main() {
  String name = "Ram";
  nameloop('$name');
}

void nameloop(String name) {
  int c = 100;
  for (int num = 1; num <= c; num++) {
    print("$num. $name");
  }
}
