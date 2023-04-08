void main(List<String> args) {
  Employee emp = Employee("Rahul", 21, 2000);
  print(emp);
  emp.displayName();

  Peasent emp1 = Peasent("Sumedh", 20, "Cycle");
  print(emp1);
  emp1.displayName();
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayName() {
    print("Name: $name");
  }
}

class Employee extends Person {
  int salary;

  Employee(String name, int age, this.salary) : super(name, age);

  // To create object to string to make printable. Without this it print instances.
  @override
  String toString() {
    return "Name:$name, Age: $age, Salary: $salary";
  }
}

class Peasent extends Person {
  String property;

  Peasent(String name, int age, this.property) : super(name, age);
}
