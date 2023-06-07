import 'package:repositorypattern_di/model/user.dart';

class LocalDataSource {
  List<User> users = [
    User(id: 1, name: "Local Bhupesh", age: 21),
    User(id: 2, name: "Local Manoj", age: 20),
    User(id: 3, name: "Local Rahul", age: 23)
  ];

  bool addUser(User user) {
    users.add(user);
    return true;
  }

  List<User> getUsers() {
    return users;
  }
}
