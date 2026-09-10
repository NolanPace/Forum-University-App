// FILE: lib/core/permissions/permission_service.dart

class PermissionService {
  final Set<String> permissions;

  const PermissionService(
    this.permissions,
  );

  bool can(String permission) {
    return permissions.contains(permission);
  }
}