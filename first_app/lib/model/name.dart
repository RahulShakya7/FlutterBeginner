class NameCenter {
  List<String> names = ['Sumedha', 'Karma', 'Ruchan', 'Avinav', 'Samyog'];

  String printNames(var index) {
    return names[((index % names.length))];
  }
}
