// FILE: lib/bootstrap.dart
// Initializes services required before Forum starts.

import 'core/auth/auth_session.dart';

Future<void> bootstrap() async {
  await AuthSession.instance.initialize();
}