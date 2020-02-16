import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:toggle_icon_button/toggle_icon_button.dart';

void main() {
  testWidgets('default is icon 1', (WidgetTester tester) async {
    await tester.pumpWidget(ToggleIconButton(
        icon1: Icons.ac_unit, icon2: Icons.access_alarm, onPressed: () {}));
    final toggleIconButtonWithIcon1 = find.byIcon(Icons.ac_unit);
    final toggleIconButtonWithIcon2 = find.byIcon(Icons.access_alarm);
    expect(toggleIconButtonWithIcon1, findsOneWidget);
    expect(toggleIconButtonWithIcon2, findsNothing);
  });

  testWidgets('on click icon changes', (WidgetTester tester) async {
    await tester.pumpWidget(ToggleIconButton(
        icon1: Icons.ac_unit, icon2: Icons.access_alarm, onPressed: () {}));
    final widget = find.byType(ToggleIconButton);
    await tester.tap(widget);
    final toggleIconButtonWithIcon2 = find.byIcon(Icons.access_alarm);
    expect(toggleIconButtonWithIcon2, findsNothing);
  });
}
