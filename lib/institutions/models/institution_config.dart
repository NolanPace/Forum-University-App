// FILE: lib/institutions/models/institution_config.dart

class InstitutionConfig {
  final Set<String> enabledModules;

  const InstitutionConfig({
    required this.enabledModules,
  });

  bool isEnabled(String id) {
    return enabledModules.contains(id);
  }
}