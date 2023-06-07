import 'package:get_it/get_it.dart';
import 'package:repositorypattern_di/data_source/local/local_data_source.dart';
import 'package:repositorypattern_di/data_source/remote/remote_data_source.dart';
import 'package:repositorypattern_di/repository/user_repository.dart';

// globalizing
final getIt = GetIt.instance;

initModule() {
  getIt.registerLazySingleton<LocalDataSource>(
    () => LocalDataSource(),
  );

  getIt.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSource(),
  );

  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(
        localDataSource: getIt(),
        remoteDataSource: getIt(),
      ),
    );
}
