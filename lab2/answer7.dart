// Create a map with a name, and phone keys and store some values. Use where to find all keys that have length 4.
void main(List<String> args) {
  Map<String, String> info = {
    'Rahul': '9823476234',
    'Dave': '9823434578',
    'Carol': '9823454678',
    'Chad': '9834345345',
    'Avinav': '9885678978',
  };
  length(info);
}

void length(Map<String, String> info) {
  Iterable<String> length4 = info.keys.where((key) => key.length == 4);
  print('All contacts: $info');
  print('Keys with length 4: $length4');
}
