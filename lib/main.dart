import 'package:flutter/material.dart';

import 'application/app/app.locator.dart';
import 'application/app/dinder_app.dart';
import 'ui/customs/setup_snackbar_ui.dart';

Future<void> main() async {
  await setupLocator();
  setupSnackbarUI();

  runApp(const DinderApp());
}
