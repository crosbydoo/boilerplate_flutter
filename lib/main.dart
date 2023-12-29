import 'package:boilerplate_flutter/app/app.dart';
import 'package:boilerplate_flutter/bootstrap.dart';
import 'package:boilerplate_flutter/core/env/settings.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppSettings.setting();
  bootstrap(() => const App());
}
