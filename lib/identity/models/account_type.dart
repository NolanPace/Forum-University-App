// FILE: lib/identity/models/account_type.dart

enum AccountType {
  student,
  educator,
}

extension AccountTypeX on AccountType {
  String get label => switch (this) {
        AccountType.student => 'Student',
        AccountType.educator => 'Educator',
      };
}