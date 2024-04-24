// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_testing/main.dart';
import 'package:learn_testing/myValidator.dart';
import 'package:learn_testing/unitTest.dart';

void main() {
  testWidgets("Display Widget", (widgetTester) async {
    await widgetTester.pumpWidget(MyApp());

    var btn = find.byType(MaterialButton);
    expect(btn, findsOneWidget);
  });

  testWidgets("display multi Widgets", (tester) async {
    await tester.pumpWidget(MyApp());

    var btn = find.byType(MaterialButton);
    expect(btn, findsNWidgets(2));
  });

  testWidgets("Display No Widget", (tester) async {
    await tester.pumpWidget(MyApp());

    var btn = find.byType(MaterialButton);
    expect(btn, findsNothing);
  });

  testWidgets("Display widgets", (widgetTester) async {
    await widgetTester.pumpWidget(MyApp());

    var btn = find.byType(MaterialButton);
    expect(btn, findsWidgets);
  });

  /////Unit testing

  late UnitTest unit;


  //Global level decleration
  setUp(() {
    unit = UnitTest();
  });


  //Group unit test for some test case
  group("UnitClass test", () {

    test("value increment", () {
      // final unitClass = UnitTest();
      unit.increment();
      expect(unit.value, 1);
    });

    test("value decrement", () {
      // final unit = UnitTest();
      unit.decrement();
      expect(unit.value, -1);
    });

  });


  test("value increment", () {
    // final unitClass = UnitTest();
    unit.increment();
    expect(unit.value, 1);
  });

  test("value decrement", () {
    // final unit = UnitTest();
    unit.decrement();
    expect(unit.value, -1);
  });

  test("value plus 2", () {
    // final unit = UnitTest();
    unit.incrementTwo();
    expect(unit.value, 2);
  });

  ////Login page Test case
  group("Login Page Test case", () {

    test('Empty email test', () {
      String result = MyValidator.emailValidator('');
      expect(result, 'Please enter email');
    });

    test("Valid email test", () {
      String result = MyValidator.emailValidator('2826577@com');
      expect(result, "Email is valid");
    });

    test("Empty Password test", () {
      String result = MyValidator.passwordValidator('');
      expect(result, 'Please enter Password');
    });

    test("Valid password test", (){
      String result = MyValidator.passwordValidator("qwer1234");
      expect(result, "Password is valid");
    });

    test("password test", (){
      String result = MyValidator.passwordValidator("qwer12");
      expect(result, "Password must be more than 7 character");
    });

  });

}
