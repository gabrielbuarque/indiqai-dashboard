import '../database.dart';

class RapidSwitchTable extends SupabaseTable<RapidSwitchRow> {
  @override
  String get tableName => 'rapid_switch';

  @override
  RapidSwitchRow createRow(Map<String, dynamic> data) => RapidSwitchRow(data);
}

class RapidSwitchRow extends SupabaseDataRow {
  RapidSwitchRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RapidSwitchTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get key => getField<String>('key');
  set key(String? value) => setField<String>('key', value);
}
