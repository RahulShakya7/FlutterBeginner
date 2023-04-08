abstract class User {
  void login();
  void logout();
}

abstract class Student {
  void exam();
  void result();
}

abstract class Teacher {
  void calcSalary();
  void classes();
}

class Rahul implements Student, Teacher{
  @override
  void calcSalary() {
    // TODO: implement calcSalary
  }

  @override
  void classes() {
    // TODO: implement classes
  }

  @override
  void exam() {
    // TODO: implement exam
  }

  @override
  void result() {
    // TODO: implement result
  }
}