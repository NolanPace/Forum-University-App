// FILE: lib/institutions/models/institution_membership.dart

class InstitutionMembership {
  final String id;
  final String institutionId;
  final String institutionalEmail;
  final String institutionalIdentifier;
  final bool active;

  const InstitutionMembership({
    required this.id,
    required this.institutionId,
    required this.institutionalEmail,
    required this.institutionalIdentifier,
    this.active = true,
  });
}