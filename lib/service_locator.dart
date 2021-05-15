import 'package:basic/data_access/local_db/db.dart';
import 'package:basic/data_access/ram/ram.dart';
import 'package:basic/data_access/secure_storage/secure_storage.dart';
import 'package:basic/repositories/test_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:sembast/sembast.dart';

final serviceLocator = GetIt.instance;

Future<void> initServiceLocator() async {
  serviceLocator.registerLazySingleton<Ram>(() => Ram());
  serviceLocator.registerLazySingletonAsync<Database>(() async => await Db().database);
  serviceLocator.registerLazySingleton<SecureStorage>(() => SecureStorage());

  /* Repositories */
  serviceLocator.registerLazySingleton(() => TestRepository());
  /* Services */
}
