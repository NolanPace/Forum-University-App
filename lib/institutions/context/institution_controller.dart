// FILE: lib/institutions/context/institution_controller.dart

import 'package:flutter/foundation.dart';
import '../models/institution.dart';

class InstitutionController
    extends ChangeNotifier {
  Institution? _active;

  Institution? get active => _active;

  void switchTo(
    Institution institution,
  ) {
    _active = institution;
    notifyListeners();
  }
}