// FILE: lib/features/registration/domain/registration.dart

class Registration {
  final String sectionId;
  final String status;

  const Registration({
    required this.sectionId,
    this.status = 'planned',
  });
}