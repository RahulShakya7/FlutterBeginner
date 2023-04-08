// Add your 7 friend names to the list. Use where to find a name that starts with the alphabet a.
void main(List<String> args) {
  List<String> names = [];
  names.add("Ruchan");
  names.add("Gaurav");
  names.add("Satish");
  names.add("Avinav");
  names.add("Karma");
  names.add("Sumedha");
  names.add("Always");
  nameWithA(names);
}

void nameWithA(List<String> names) {
  Iterable<String> aNames = names.where((name) => name.startsWith('A'));
  print('All names: $names');
  print('Names starting with "A": $aNames');
}
