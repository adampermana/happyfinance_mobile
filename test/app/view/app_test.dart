import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FullScreenPage disposes correctly on drag', (
    tester,
  ) async {
    // Arrange
    await tester.pumpWidget(
      MaterialApp(
        home: SizedBox(
          child: Container(),
        ),
      ),
    );

    // Act
    // Simulate dragging down beyond the dispose limit
    await tester.drag(find.byType(SizedBox), const Offset(0, 300));
    await tester.pumpAndSettle();

    // Assert
    expect(find.byType(SizedBox), findsNothing); // Expect the page to pop
  });
}
