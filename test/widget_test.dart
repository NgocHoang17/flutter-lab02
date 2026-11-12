import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lab02/main.dart';

void main() {
  testWidgets('MiCard displays essential elements', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MiCardApp());

    // Verify that CircleAvatar exists.
    expect(find.byType(CircleAvatar), findsOneWidget);

    // Verify that the user name is displayed.
    expect(find.text('Chu Ngọc Hoàng'), findsOneWidget);

    // Verify that the job title "FLUTTER DEVELOPER" is displayed.
    expect(find.text('FLUTTER DEVELOPER'), findsOneWidget);

    // Verify that phone icon is present.
    expect(find.byIcon(Icons.phone), findsOneWidget);

    // Verify that email icon is present.
    expect(find.byIcon(Icons.email), findsOneWidget);
  });
}
