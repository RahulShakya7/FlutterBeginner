// Create an empty list of type strings called days. Use the add method to add names of 7 days and print all days.
void main(List<String> args) {
  List<String> days = [];
  addDays(days);
}

void addDays(List<String> days) {
  days.add("Sunday");
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saterday");
  for (String day in days) {
    print(day);
  }
}
