import 'dart:convert';

import 'package:get_storage/get_storage.dart';

/// <<< To store data in phone storage --------- >>>
class GetStorageData {
  GetStorage getStorage = GetStorage();

  String loginData = "LoginData";
  String deviceId = "deviceId";

  /// <<< To save object data --------- >>>
  saveObject(String key, value) {
    String allData = jsonEncode(value);
    getStorage.write(key, allData);
  }

  /// <<< To read object data --------- >>>
  readObject(String key) {
    return jsonDecode(getStorage.read(key));
  }

  /// <<< To save string data --------- >>>
  saveString(String key, value) async {
    return getStorage.write(key, value);
  }

  /// <<< To read string data --------- >>>
  readString(String key) {
    if (getStorage.hasData(key)) {
      return getStorage.read(key);
    } else {
      return null;
    }
  }

  /// <<< To remove data --------- >>>
  removeData(String key) async {
    return getStorage.remove(key);
  }

  /// <<< To Store Key data --------- >>>
  bool containKey(String key) {
    return getStorage.hasData(key);
  }
}
