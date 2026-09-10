// FILE: lib/core/storage/cache_service.dart

class CacheService {
  final Map<String, Object?> _cache = {};

  Object? get(String key) {
    return _cache[key];
  }

  void put(
    String key,
    Object? value,
  ) {
    _cache[key] = value;
  }

  void clear() {
    _cache.clear();
  }
}