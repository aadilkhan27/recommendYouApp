import 'package:get_storage/get_storage.dart';

class Storage {
  const Storage._();

  static final GetStorage _storage = GetStorage();

  static GetStorage get storage => _storage;

  static const TOKEN = "token";

  static const DEEP_LINKING_URL = "deep_linking_url";
  static const DEEP_LINKING_TYPE = "deep_linking_type";
  static const DEEP_LINKING_KEY = "deep_linking_key";

  static const ID = "id";
  static const MOBILE = "mobile";
  static const NAME = "name";
  static const USER_NAME = "user_name";
  static const USER_IMAGE = "user_image";
  static const REFERRAL_CODE = "referral_code";

  static const USER_STREET = "user_street";
  static const USER_CITY = "user_city";
  static const USER_STATE = "user_state";
  static const USER_PIN_CODE = "user_pin_code";
  static const USER_LAT = "user_lat";
  static const USER_LONG = "user_long";

  static const CONTACT_PERMISSION = "contact_permission";

  // static Future<void> saveValue(String key, dynamic value) => _storage.writeIfNull(key, value);
  static Future<void> saveValue(String key, dynamic value) => _storage.write(key, value);

  static T? getValue<T>(String key) => _storage.read<T>(key);

  static bool hasData(String key) => _storage.hasData(key);

  static Future<void> removeValue(String key) => _storage.remove(key);

  static Future<void> clearStorage() => _storage.erase();

  // Not Clear All S
}
