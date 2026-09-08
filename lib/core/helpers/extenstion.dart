import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<T?> pushReplacementPage<T>(Widget page) {
    return Navigator.of(
      this,
    ).pushReplacement<T, T>(MaterialPageRoute(builder: (_) => page));
  }

  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);
  }

  Future<T?> pushReplacementNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed<T, T>(routeName, arguments: arguments);
  }

  Future<T?> pushNamedAndRemoveUntil<T>(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushNamedAndRemoveUntil<T>(routeName, predicate, arguments: arguments);
  }

  Future<T?> pushAndRemoveUntil<T>(
    Widget page, {
    required RoutePredicate predicate,
  }) {
    return Navigator.of(
      this,
    ).pushAndRemoveUntil<T>(MaterialPageRoute(builder: (_) => page), predicate);
  }

  void pop<T extends Object?>([T? result]) {
    if (Navigator.of(this).canPop()) {
      Navigator.of(this).pop<T>(result);
    }
  }

  bool get canPop => Navigator.of(this).canPop();
}
