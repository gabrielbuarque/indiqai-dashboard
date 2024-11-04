import '../database.dart';

class RewardsTable extends SupabaseTable<RewardsRow> {
  @override
  String get tableName => 'rewards';

  @override
  RewardsRow createRow(Map<String, dynamic> data) => RewardsRow(data);
}

class RewardsRow extends SupabaseDataRow {
  RewardsRow(super.data);

  @override
  SupabaseTable get table => RewardsTable();

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imageURL => getField<String>('imageURL');
  set imageURL(String? value) => setField<String>('imageURL', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  double? get salePrice => getField<double>('sale_price');
  set salePrice(double? value) => setField<double>('sale_price', value);

  String? get cuponCode => getField<String>('cupon_code');
  set cuponCode(String? value) => setField<String>('cupon_code', value);

  DateTime? get expireDate => getField<DateTime>('expire_date');
  set expireDate(DateTime? value) => setField<DateTime>('expire_date', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  double? get rotation => getField<double>('rotation');
  set rotation(double? value) => setField<double>('rotation', value);

  String? get sessionId => getField<String>('session_id');
  set sessionId(String? value) => setField<String>('session_id', value);

  String? get blurHash => getField<String>('blur_hash');
  set blurHash(String? value) => setField<String>('blur_hash', value);

  String? get productUid => getField<String>('product_uid');
  set productUid(String? value) => setField<String>('product_uid', value);

  String? get nomeEmpresa => getField<String>('nome_empresa');
  set nomeEmpresa(String? value) => setField<String>('nome_empresa', value);

  int? get points => getField<int>('points');
  set points(int? value) => setField<int>('points', value);

  String? get regrasUsoCupom => getField<String>('regras_uso_cupom');
  set regrasUsoCupom(String? value) =>
      setField<String>('regras_uso_cupom', value);

  bool? get cupomUsado => getField<bool>('cupomUsado');
  set cupomUsado(bool? value) => setField<bool>('cupomUsado', value);

  int? get qrcodeId => getField<int>('qrcode_id');
  set qrcodeId(int? value) => setField<int>('qrcode_id', value);
}
