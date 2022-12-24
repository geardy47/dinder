import 'package:flutter/material.dart';

import 'application/app/app.locator.dart';
import 'application/app/dinder_app.dart';

Future<void> main() async {
  await setupLocator();

  runApp(const DinderApp());
}
