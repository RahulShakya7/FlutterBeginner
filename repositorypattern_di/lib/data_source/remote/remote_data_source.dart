import '../../model/user.dart';

class RemoteDataSource {
  List<User> users = [
    User(id: 1, name: "Remote Bhupesh", age: 21),
    User(id: 2, name: "Remote Manoj", age: 20),
    User(id: 3, name: "Remote Rahul", age: 23)
  ];

  bool addUser(User user) {
    users.add(user);
    return true;
  }

  List<User> getUsers() {
    return users;
  }
}
