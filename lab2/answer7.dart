// Create a map with a name, and phone keys and store some values. Use where to find all keys that have length 4.
void main(List<String> args) {
  Map<String, dynamic> info = {
    'name' : 'Rahul Shakya',
    'phonekeys' : '45345',
  };
} 

void length4(Map(String, dynamic)){
  Iterable<String> length = names.where((name) => name.length(4));
}