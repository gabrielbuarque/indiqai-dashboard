import '../database.dart';

class FormsPesquisaTable extends SupabaseTable<FormsPesquisaRow> {
  @override
  String get tableName => 'forms_pesquisa';

  @override
  FormsPesquisaRow createRow(Map<String, dynamic> data) =>
      FormsPesquisaRow(data);
}

class FormsPesquisaRow extends SupabaseDataRow {
  FormsPesquisaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FormsPesquisaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  List<String> get forms => getListField<String>('forms');
  set forms(List<String>? value) => setListField<String>('forms', value);
}
