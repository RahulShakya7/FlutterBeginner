// Create a map with name, address, age, country keys, and store values. Update country name to other country and print all keys and values.
void main(List<String> args) {
  // create a map with name, address, age, and country keys
  Map<String, dynamic> person = {
    'name': 'Karma Lama',
    'address': 'Bouddha',
    'age': 20,
    'country': 'Nepal'
  };
  updateAndprint(person);
}

void updateAndprint(Map<String, dynamic> person) {
  person['country'] = 'Canada';

  print('Name: ${person['name']}');
  print('Address: ${person['address']}');
  print('Age: ${person['age']}');
  print('Country: ${person['country']}');
}
