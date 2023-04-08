// Create a list of names and print all names using the list.

void main(List<String> args) {
  // For list []
  List<String> names = ["Rahul", "Sumedh", "Avinav", "Ruchan", "Karma"];
  printName(names);
}

void printName(List<String> names) {
  // Normal loop
  // for (int i = 0; i > names.length; i++) {
  //   print(names[i]);
  // }
  // Dart way
  for (String name in names) {
    print(name);
  }
}
