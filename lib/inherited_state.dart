import 'package:flutter/material.dart';

class InheritedState extends InheritedWidget {
  final int number;
  final Widget child;

  const InheritedState({super.key, required this.number, required this.child})
      : super(child: child);

  @override
  bool updateShouldNotify(InheritedState oldWidget) {
    return oldWidget.number != number;
  }

  static InheritedState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedState>()!;
  }

  static increment(int value) {
    return value = value + 1;
  }
}
