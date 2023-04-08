// /Write a dart program to generate multiplication tables of 5.
void main() {
  int n = 5;
  table(n);
}

void table(int n) {
  for (int i = 1; i <= 10; i++) {
    int m = n * i;
    print("$n x $i = $m");
  }
}
