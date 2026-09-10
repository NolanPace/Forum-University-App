// FILE: lib/institutions/repositories/institution_repository.dart

import '../models/institution.dart';

abstract class InstitutionRepository {
  Future<List<Institution>> search(
    String query,
  );
}