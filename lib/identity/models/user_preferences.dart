// FILE: lib/identity/models/user_preferences.dart

class UserPreferences {
  final bool darkMode;
  final bool pushNotifications;

  const UserPreferences({
    this.darkMode = false,
    this.pushNotifications = true,
  });
}