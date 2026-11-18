// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_pokemon_app/main.dart';

void main() {
  testWidgets('Menampilkan daftar Pokemon dengan ListView.builder',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Daftar Pokemon:'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.text('Pikachu'), findsOneWidget);
    expect(find.text('Charmander'), findsOneWidget);
    expect(find.text('Bulbasaur'), findsOneWidget);
    expect(find.text('Squirtle'), findsOneWidget);
    expect(find.text('Eevee'), findsOneWidget);
    expect(find.byType(Image), findsNWidgets(5));
  });
}
