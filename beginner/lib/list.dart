void main() {
  var arr = [1, 2, 3, 5, 7, 8, 9];
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] % 2 == 0) {
      print(i);
    }
  }

  for (int i in arr) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
