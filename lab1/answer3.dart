// Write a dart program to check whether a number is positive, negative, or zero.
void main(List<String> args) {
  String chk = varchk(4);
  print('The number is $chk');
}

String varchk(int num) {
  if (num > 0) {
    return 'positive';
  } else if (num < 0) {
    return 'negetive';
  } else {
    return 'zero';
  }
}
