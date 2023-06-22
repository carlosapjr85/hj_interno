import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'Usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get cdUsuario => getField<int>('cdUsuario')!;
  set cdUsuario(int value) => setField<int>('cdUsuario', value);

  int get idPersonaTexdrive => getField<int>('idPersonaTexdrive')!;
  set idPersonaTexdrive(int value) => setField<int>('idPersonaTexdrive', value);

  String? get nomeUsuario => getField<String>('nomeUsuario');
  set nomeUsuario(String? value) => setField<String>('nomeUsuario', value);

  DateTime? get dataCriacao => getField<DateTime>('dataCriacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('dataCriacao', value);

  String? get setor => getField<String>('setor');
  set setor(String? value) => setField<String>('setor', value);

  String? get senhaUsuario => getField<String>('senhaUsuario');
  set senhaUsuario(String? value) => setField<String>('senhaUsuario', value);

  String? get isUsuarioTexDrive => getField<String>('isUsuarioTexDrive');
  set isUsuarioTexDrive(String? value) =>
      setField<String>('isUsuarioTexDrive', value);
}
