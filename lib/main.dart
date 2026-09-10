// FILE: lib/main.dart

import 'package:flutter/material.dart';
import 'bootstrap.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(bootstrap());
}