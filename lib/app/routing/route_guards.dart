// FILE: lib/app/routing/route_guards.dart

import '../../core/auth/auth_session.dart';

class RouteGuards {
  static bool get authenticated =>
      AuthSession.instance.user != null;

  static bool get hasInstitution =>
      AuthSession.instance.activeInstitution != null;
}