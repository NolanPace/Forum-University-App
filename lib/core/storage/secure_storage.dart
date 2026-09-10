// FILE: lib/core/storage/secure_storage.dart

class SecureStorage {
  final Map<String, String> _memory = {};

  Future<void> write(
    String key,
    String value,
  ) async {
    _memory[key] = value;
  }

  Future<String?> read(
    String key,
  ) async {
    return _memory[key];
  }

  Future<void> delete(
    String key,
  ) async {
    _memory.remove(key);
  }
}