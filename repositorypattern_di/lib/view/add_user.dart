import 'package:repositorypattern_di/di/di.dart';
import 'package:repositorypattern_di/repository/user_repository.dart';

import '../model/user.dart';

void main() {
  initModule();

  User user = User(id: 1, name: "John Wick", age: 48);

  // UserRepository userRepository = UserRepository(
  //   // localDataSource: LocalDataSource(),
  // );

  if (getIt<UserRepository>().addUser(user)) {
    print('User added successfully');
  } else {
    print('User not added');
  }
}
