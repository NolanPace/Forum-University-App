// FILE: lib/identity/models/app_user.dart
// Global Forum user account model.

import 'account_type.dart';

class AppUser {
  const AppUser({
    required this.id,
    required this.name,
    required this.email,
    required this.accountType,
    this.photoUrl,
    this.phoneNumber,
    this.createdAt,
  });

  final String id;
  final String name;
  final String email;
  final AccountType accountType;

  final String? photoUrl;
  final String? phoneNumber;
  final DateTime? createdAt;

  String get firstName {
    final String trimmed = name.trim();

    if (trimmed.isEmpty) {
      return '';
    }

    return trimmed.split(RegExp(r'\s+')).first;
  }

  AppUser copyWith({
    String? id,
    String? name,
    String? email,
    AccountType? accountType,
    String? photoUrl,
    String? phoneNumber,
    DateTime? createdAt,
  }) {
    return AppUser(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      accountType: accountType ?? this.accountType,
      photoUrl: photoUrl ?? this.photoUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'accountType': accountType.storageValue,
      'photoUrl': photoUrl,
      'phoneNumber': phoneNumber,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  factory AppUser.fromJson(Map<String, dynamic> json) {
    return AppUser(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      accountType: AccountTypeExtension.fromStorageValue(
        json['accountType'] as String? ?? 'student',
      ),
      photoUrl: json['photoUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      createdAt: _dateTimeFromJson(json['createdAt']),
    );
  }

  static DateTime? _dateTimeFromJson(dynamic value) {
    if (value is! String || value.isEmpty) {
      return null;
    }

    return DateTime.tryParse(value);
  }
}