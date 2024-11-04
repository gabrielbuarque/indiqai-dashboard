import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _email = await secureStorage.getStringList('ff_email') ?? _email;
    });
    await _safeInitAsync(() async {
      _key = await secureStorage.getStringList('ff_key') ?? _key;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _drawer = false;
  bool get drawer => _drawer;
  set drawer(bool value) {
    _drawer = value;
  }

  List<String> _email = ['takami@indiqai.com', 'indiqai@indiqai.com'];
  List<String> get email => _email;
  set email(List<String> value) {
    _email = value;
    secureStorage.setStringList('ff_email', value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
  }

  void addToEmail(String value) {
    email.add(value);
    secureStorage.setStringList('ff_email', _email);
  }

  void removeFromEmail(String value) {
    email.remove(value);
    secureStorage.setStringList('ff_email', _email);
  }

  void removeAtIndexFromEmail(int index) {
    email.removeAt(index);
    secureStorage.setStringList('ff_email', _email);
  }

  void updateEmailAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    email[index] = updateFn(_email[index]);
    secureStorage.setStringList('ff_email', _email);
  }

  void insertAtIndexInEmail(int index, String value) {
    email.insert(index, value);
    secureStorage.setStringList('ff_email', _email);
  }

  List<String> _key = ['TIcERyangA', 'rLww5d9^C!q'];
  List<String> get key => _key;
  set key(List<String> value) {
    _key = value;
    secureStorage.setStringList('ff_key', value);
  }

  void deleteKey() {
    secureStorage.delete(key: 'ff_key');
  }

  void addToKey(String value) {
    key.add(value);
    secureStorage.setStringList('ff_key', _key);
  }

  void removeFromKey(String value) {
    key.remove(value);
    secureStorage.setStringList('ff_key', _key);
  }

  void removeAtIndexFromKey(int index) {
    key.removeAt(index);
    secureStorage.setStringList('ff_key', _key);
  }

  void updateKeyAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    key[index] = updateFn(_key[index]);
    secureStorage.setStringList('ff_key', _key);
  }

  void insertAtIndexInKey(int index, String value) {
    key.insert(index, value);
    secureStorage.setStringList('ff_key', _key);
  }

  String _adminkey = '';
  String get adminkey => _adminkey;
  set adminkey(String value) {
    _adminkey = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
