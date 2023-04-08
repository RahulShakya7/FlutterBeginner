// Create a set of fruits and print all fruits using a loop.
void main(List<String> args) {
  // For set {}
  Set<String> fruits = {"Apple", "Banana", "Pear", "Mango", "Melon"};
  printFriut(fruits);
}

void printFriut(Set<String> fruits) {
  for (String fruit in fruits) {
    print(fruit);
  }
}
