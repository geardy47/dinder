import 'package:dinder/application/app/app.router.dart';
import 'package:dinder/application/app/theme/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stacked_services/stacked_services.dart';

class WidgetTestUtil {
  static Widget test(
    Widget widget, {
    NavigatorObserver? navigatorObserver,
  }) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        title: 'Dinder App',
        theme: appThemeData(context),
        navigatorObservers: [StackedService.routeObserver],
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
