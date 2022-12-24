import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../application/app/app.locator.dart';
import '../../application/app/constants/custom_color.dart';

void setupSnackbarUI() {
  final snackbarService = locator<SnackbarService>();

  snackbarService.registerCustomSnackbarConfig(
    variant: 'failed',
    config: SnackbarConfig(
      snackPosition: SnackPosition.BOTTOM,
      padding: const EdgeInsets.fromLTRB(24.0, 16.0, 0.0, 24.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
      backgroundColor: CustomColor.primaryColor,
      borderRadius: 8.0,
      isDismissible: false,
    ),
  );
}
