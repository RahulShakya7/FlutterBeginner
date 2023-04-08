// Write a dart program to calculate the sum of natural numbers.
void main() {
  int num = 5;
  int a = sum(num);
  print("The sum of the numbers is $a");
}

int sum(int num) {
  int n = 0;
  for (int i = 1; i <= num; i++) {
    n += i;
  }
  return n;
}
