import 'package:flutter/material.dart';

class Navigation {
  static var navigatorKey = GlobalKey<NavigatorState>();
  static var scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static Future<T?> pushNamed<T extends Object?>(String routeName,
          {Object? arguments}) =>
      navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);

  static Future<T?> pushNamedAndRemoveUntil<T extends Object?>(
    String routeName,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) =>
      navigatorKey.currentState!
          .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);

  static void pop<T extends Object?>([T? result]) =>
      navigatorKey.currentState!.pop<T>(result);

  static void popUntil(bool Function(Route<dynamic>) predicate) =>
      navigatorKey.currentState!.popUntil(predicate);
}
