// Write a dart program to check if the number is odd or even.
void main() {
  if (EvenOdd(4)) {
    print("$num is even.");
  } else {
    print("$num is odd.");
  }
}

bool EvenOdd(int num) {
  if (num % 2 == 0) {
    return true;
  } else {
    return false;
  }
}
