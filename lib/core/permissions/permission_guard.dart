// FILE: lib/core/permissions/permission_guard.dart

class PermissionGuard {
  static bool allowed(
    Set<String> permissions,
    String requiredPermission,
  ) {
    return permissions.contains(
      requiredPermission,
    );
  }
}