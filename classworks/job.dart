class Faculty {
  String name;
  int age;
  String address;

  Faculty(this.name, this.age, this.address);

  @override
  String toString() {
    return "Name:$name, Age: $age, Salary: $address";
  }

  void details() {
    print("Details");
    print("Name: $name ,Age: $age, Address: $address");
  }
}

class partTimeS extends Faculty {
  int hourlySalary;

  partTimeS(String name, int age, String address, this.hourlySalary)
      : super(name, age, address);

  void yearlyH() {
    print("Yearly Salary : ${hourlySalary * 12 * 20}");
  }
}

class fullTimeS extends Faculty {
  int monthlySalary;

  fullTimeS(String name, int age, String address, this.monthlySalary)
      : super(name, age, address);

  void yearlyM() {
    print("Yearly Salary : ${monthlySalary * 12}");
  }
}

void main(List<String> args) {
  partTimeS yearlysalaryP = partTimeS("Sumedh", 27, "York", 600);
  yearlysalaryP.yearlyH();
  yearlysalaryP.details();

  fullTimeS yearlysalaryF = fullTimeS("Karma", 20, "Minnesota", 30000);
  yearlysalaryF.yearlyM();
  yearlysalaryF.details();
}
