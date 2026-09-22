// FILE: lib/identity/models/account_type.dart
// Defines the global Forum account type.

enum AccountType {
  student,
  educator,
}

extension AccountTypeExtension on AccountType {
  String get label {
    switch (this) {
      case AccountType.student:
        return 'Student';
      case AccountType.educator:
        return 'Educator';
    }
  }

  String get storageValue {
    switch (this) {
      case AccountType.student:
        return 'student';
      case AccountType.educator:
        return 'educator';
    }
  }

  static AccountType fromStorageValue(String value) {
    switch (value.toLowerCase()) {
      case 'educator':
        return AccountType.educator;

      case 'student':
      default:
        return AccountType.student;
    }
  }
}