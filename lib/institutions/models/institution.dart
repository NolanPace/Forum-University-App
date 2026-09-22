// FILE: lib/institutions/models/institution.dart
// Represents a university connected to a Forum account.

class Institution {
  const Institution({
    required this.id,
    required this.name,
    required this.shortName,
    this.role,
    this.domain,
    this.city,
    this.state,
    this.country,
    this.logoUrl,
    this.primaryColorHex,
  });

  final String id;
  final String name;
  final String shortName;

  // institutional role.
  // Examples:
  // Student
  // Professor
  // Visiting Student
  // Lecturer
  final String? role;

  final String? domain;
  final String? city;
  final String? state;
  final String? country;
  final String? logoUrl;
  final String? primaryColorHex;

  Institution copyWith({
    String? id,
    String? name,
    String? shortName,
    String? role,
    String? domain,
    String? city,
    String? state,
    String? country,
    String? logoUrl,
    String? primaryColorHex,
  }) {
    return Institution(
      id: id ?? this.id,
      name: name ?? this.name,
      shortName: shortName ?? this.shortName,
      role: role ?? this.role,
      domain: domain ?? this.domain,
      city: city ?? this.city,
      state: state ?? this.state,
      country: country ?? this.country,
      logoUrl: logoUrl ?? this.logoUrl,
      primaryColorHex: primaryColorHex ?? this.primaryColorHex,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'shortName': shortName,
      'role': role,
      'domain': domain,
      'city': city,
      'state': state,
      'country': country,
      'logoUrl': logoUrl,
      'primaryColorHex': primaryColorHex,
    };
  }

  factory Institution.fromJson(Map<String, dynamic> json) {
    return Institution(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      shortName: json['shortName'] as String? ?? '',
      role: json['role'] as String?,
      domain: json['domain'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      logoUrl: json['logoUrl'] as String?,
      primaryColorHex: json['primaryColorHex'] as String?,
    );
  }
}