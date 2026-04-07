import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pertemuan6/main.dart' as app;

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: app.BookListScreen()));

    // Verify that our book list is rendered
    expect(find.text('Book List'), findsOneWidget);
    expect(find.text('Algorithms to Live By: The Computer Science of Human Decisions'), findsOneWidget);
  });
}
