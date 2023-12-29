import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:boilerplate_flutter/app/app.dart';

void main() {
  testWidgets('App Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    await tester.pumpAndSettle();

    expect(Navigator.defaultRouteName, '/');
  });
}
