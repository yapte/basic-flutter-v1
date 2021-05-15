import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

// TODO: DB Migrations
class Db {
  Completer<Database> _dbOpenCompleter;

  Future<Database> get database async {
    if (_dbOpenCompleter == null) {
      _dbOpenCompleter = Completer();
      final appDocumentDir = await getApplicationDocumentsDirectory();
      // TODO: DB name
      final dbPath = join(appDocumentDir.path, 'MyApp.db');
      final database = await databaseFactoryIo.openDatabase(dbPath);
      _dbOpenCompleter.complete(database);
    }
    return _dbOpenCompleter.future;
  }
}
