import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'tables/usuarios_table.dart';
import 'tables/insumos_table.dart';
import 'tables/lotes_table.dart';
import 'tables/movimientos_table.dart';
import 'tables/solicitudes_table.dart';
import 'tables/alertas_table.dart';
import 'dao/usuarios_dao.dart';
import 'dao/insumos_dao.dart';
import 'dao/lotes_dao.dart';
import 'dao/movimientos_dao.dart';
import 'dao/solicitudes_dao.dart';
import 'dao/alertas_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    Usuarios,
    Insumos,
    Lotes,
    Movimientos,
    Solicitudes,
    Alertas,
  ],
  daos: [
    UsuariosDao,
    InsumosDao,
    LotesDao,
    MovimientosDao,
    SolicitudesDao,
    AlertasDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          // Agregar migraciones futuras aquí
        },
      );
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'lab_inventory.db'));
    return NativeDatabase.createInBackground(file);
  });
}
