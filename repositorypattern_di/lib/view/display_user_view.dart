import 'package:repositorypattern_di/repository/user_repository.dart';

import '../di/di.dart';

void main() {
  initModule();
  // UserRepository userRepository = UserRepository();
  print(getIt<UserRepository>().getUsers());
}

// Mason CLI