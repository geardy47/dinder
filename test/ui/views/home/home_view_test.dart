import 'package:dinder/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_setup.dart';
import '../../../widget_test_util.dart';

void main() {
  setUp(() {
    registerServices();
  });

  tearDown(() => unregisterServices());

  Widget createWidgetUnderTest() => WidgetTestUtil.test(const HomeView());
  testWidgets(
    'Has a home appbar',
    (WidgetTester tester) async {
      final homeAppBar = find.byKey(const ValueKey('homeAppBar'));

      await tester.pumpWidget(createWidgetUnderTest());

      expect(homeAppBar, findsOneWidget);
    },
  );

  testWidgets(
    'Has a Sliver List with dog breed list',
    (WidgetTester tester) async {
      final sliverList = find.byKey(const ValueKey('sliverList'));

      await tester.pumpWidget(createWidgetUnderTest());

      expect(sliverList, findsOneWidget);
    },
  );
}
