void main() {
  Map greetings = {'Doko': 'Here', 'Soko': 'There', 'Koko': 'Where'};
  // ignore_for_file: avoid_print
  print(greetings);
  print('Keys are :');
  print(greetings.keys);
  print('Values are :');
  print(greetings.values);

  String searchvalue = 'Soko';
  print("$searchvalue is ${greetings[searchvalue]}");
}
