// FILE: lib/core/auth/auth_session.dart
// Runtime authentication and institution state for Forum.

import 'package:flutter/foundation.dart';

import '../../identity/models/app_user.dart';
import '../../institutions/models/institution.dart';
import '../storage/account_storage.dart';
import 'token_manager.dart';

class AuthSession extends ChangeNotifier {
  AuthSession._();

  static final AuthSession instance = AuthSession._();

  final AccountStorage _accountStorage =
      AccountStorage.instance;

  final TokenManager _tokenManager =
      TokenManager.instance;

  AppUser? _user;

  List<Institution> _institutions =
      <Institution>[];

  Institution? _activeInstitution;

  bool _isSignedIn = false;
  bool _initialized = false;

  int _navigationIndex = 0;

  // Public state
  AppUser? get user => _user;

  List<Institution> get institutions {
    return List<Institution>.unmodifiable(
      _institutions,
    );
  }

  Institution? get activeInstitution =>
      _activeInstitution;

  bool get isSignedIn => _isSignedIn;

  bool get isInitialized => _initialized;

  int get navigationIndex => _navigationIndex;

  bool get hasAccount => _user != null;

  // Startup
  Future<void> initialize() async {
    if (_initialized) {
      return;
    }

    _user = await _accountStorage.loadUser();

    _institutions =
        await _accountStorage.loadInstitutions();

    final String? activeInstitutionId =
        await _accountStorage
            .loadActiveInstitutionId();

    _activeInstitution =
        _findInstitutionById(
      activeInstitutionId,
    );

    if (_activeInstitution == null &&
        _institutions.isNotEmpty) {
      _activeInstitution = _institutions.first;
    }

    final bool storedSignedIn =
        await _accountStorage.loadSignedIn();

    _isSignedIn =
        storedSignedIn && _user != null;

    _navigationIndex =
        await _accountStorage
            .loadNavigationIndex();

    if (_navigationIndex < 0 ||
        _navigationIndex > 4) {
      _navigationIndex = 0;
    }

    _initialized = true;

    notifyListeners();
  }

  Institution? _findInstitutionById(
    String? id,
  ) {
    if (id == null) {
      return null;
    }

    for (final Institution institution
        in _institutions) {
      if (institution.id == id) {
        return institution;
      }
    }

    return null;
  }

  // User account
  Future<void> setUser(
    AppUser? user, {
    bool signIn = true,
  }) async {
    _user = user;

    if (user == null) {
      _isSignedIn = false;

      await _accountStorage.removeUser();
      await _accountStorage.saveSignedIn(false);
    } else {
      _isSignedIn = signIn;

      await _accountStorage.saveUser(user);
      await _accountStorage.saveSignedIn(
        signIn,
      );
    }

    notifyListeners();
  }

  Future<void> updateUser(
    AppUser user,
  ) async {
    _user = user;

    await _accountStorage.saveUser(user);

    notifyListeners();
  }

  Future<void> signInStoredAccount() async {
    if (_user == null) {
      return;
    }

    _isSignedIn = true;

    await _accountStorage.saveSignedIn(true);

    notifyListeners();
  }

  // Institutions
  Future<void> addInstitution(
    Institution institution,
  ) async {
    final int existingIndex =
        _institutions.indexWhere(
      (Institution item) =>
          item.id == institution.id,
    );

    if (existingIndex >= 0) {
      _institutions[existingIndex] =
          institution;
    } else {
      _institutions.add(institution);
    }

    _activeInstitution ??= institution;

    await _persistInstitutionState();

    notifyListeners();
  }

  Future<void> updateInstitution(
    Institution institution,
  ) async {
    final int index =
        _institutions.indexWhere(
      (Institution item) =>
          item.id == institution.id,
    );

    if (index == -1) {
      return;
    }

    _institutions[index] = institution;

    if (_activeInstitution?.id ==
        institution.id) {
      _activeInstitution = institution;
    }

    await _persistInstitutionState();

    notifyListeners();
  }

  Future<void> removeInstitution(
    String institutionId,
  ) async {
    _institutions.removeWhere(
      (Institution institution) =>
          institution.id == institutionId,
    );

    if (_activeInstitution?.id ==
        institutionId) {
      if (_institutions.isEmpty) {
        _activeInstitution = null;
      } else {
        _activeInstitution =
            _institutions.first;
      }
    }

    await _tokenManager
        .clearInstitutionTokens(
      institutionId,
    );

    await _persistInstitutionState();

    notifyListeners();
  }

  Future<void> setActiveInstitution(
    Institution institution,
  ) async {
    final Institution? storedInstitution =
        _findInstitutionById(
      institution.id,
    );

    if (storedInstitution == null) {
      await addInstitution(institution);
      _activeInstitution = institution;
    } else {
      _activeInstitution =
          storedInstitution;
    }

    await _accountStorage
        .saveActiveInstitutionId(
      _activeInstitution?.id,
    );

    notifyListeners();
  }

  Future<void> switchInstitution(
    Institution institution,
  ) async {
    await setActiveInstitution(
      institution,
    );
  }

  Future<void> _persistInstitutionState() async {
    await _accountStorage.saveInstitutions(
      _institutions,
    );

    await _accountStorage
        .saveActiveInstitutionId(
      _activeInstitution?.id,
    );
  }

  // Navigation
  Future<void> setNavigationIndex(
    int index,
  ) async {
    if (index < 0 || index > 4) {
      return;
    }

    _navigationIndex = index;

    await _accountStorage
        .saveNavigationIndex(index);

    notifyListeners();
  }

  // Sign out
  Future<void> signOut() async {
    _isSignedIn = false;
    _navigationIndex = 0;

    await _accountStorage.saveSignedIn(false);
    await _accountStorage
        .saveNavigationIndex(0);

    await _tokenManager.clearGlobalTokens();

    notifyListeners();
  }

  // Delete local account
  Future<void> deleteLocalAccount() async {
    _user = null;
    _institutions = <Institution>[];
    _activeInstitution = null;
    _isSignedIn = false;
    _navigationIndex = 0;

    await _accountStorage
        .clearAccountData();

    await _tokenManager.clearEverything();

    notifyListeners();
  }
}