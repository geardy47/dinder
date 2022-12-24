import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app.router.dart';
// import 'theme/app_theme_data.dart';

class DinderApp extends StatefulWidget {
  const DinderApp({Key? key}) : super(key: key);

  @override
  State<DinderApp> createState() => _DinderAppState();
}

class _DinderAppState extends State<DinderApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => MaterialApp(
        title: 'Dinder App',
        // theme: appThemeData(context),
        navigatorObservers: [StackedService.routeObserver],
        navigatorKey: StackedService.navigatorKey,
        onGenerateRoute: StackedRouter().onGenerateRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
