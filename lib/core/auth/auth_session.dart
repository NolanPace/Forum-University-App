// FILE: lib/core/auth/auth_session.dart

import 'package:flutter/foundation.dart';

import '../../identity/models/account_type.dart';
import '../../institutions/models/institution.dart';

class AppUser {
  const AppUser({
    required this.id,
    required this.name,
    required this.personalEmail,
    required this.accountType,
  });

  final String id;
  final String name;
  final String personalEmail;
  final AccountType accountType;
}

class AuthSession extends ChangeNotifier {
  AuthSession._();

  static final AuthSession instance = AuthSession._();

  AppUser? user;

  final List<Institution> institutions = [];

  Institution? activeInstitution;

  int navigationIndex = 0;

  bool get isStudent =>
      user?.accountType == AccountType.student;

  bool get isEducator =>
      user?.accountType == AccountType.educator;

  void createAccount({
    required String name,
    required String email,
    required AccountType accountType,
  }) {
    user = AppUser(
      id: DateTime.now()
          .microsecondsSinceEpoch
          .toString(),
      name: name,
      personalEmail: email,
      accountType: accountType,
    );

    notifyListeners();
  }

  void addInstitution(
    Institution institution,
  ) {
    final exists = institutions.any(
      (item) => item.id == institution.id,
    );

    if (!exists) {
      institutions.add(institution);
    }

    activeInstitution ??= institution;

    notifyListeners();
  }

  void switchInstitution(
    Institution institution,
  ) {
    activeInstitution = institution;
    notifyListeners();
  }

  void removeInstitution(
    Institution institution,
  ) {
    institutions.removeWhere(
      (item) => item.id == institution.id,
    );

    if (activeInstitution?.id ==
        institution.id) {
      activeInstitution = institutions.isEmpty
          ? null
          : institutions.first;
    }

    notifyListeners();
  }

  void setNavigationIndex(int index) {
    navigationIndex = index;
    notifyListeners();
  }

  void signOut() {
    user = null;
    institutions.clear();
    activeInstitution = null;
    navigationIndex = 0;

    notifyListeners();
  }
}