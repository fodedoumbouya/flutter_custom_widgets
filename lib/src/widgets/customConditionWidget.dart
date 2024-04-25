import 'package:flutter/material.dart';

class CustomConditionWidget extends StatelessWidget {
  final bool condition;
  final Widget trueWidget;
  final Widget falseWidget;
  const CustomConditionWidget(
      {required this.condition,
      required this.trueWidget,
      this.falseWidget = const SizedBox.shrink(),
      super.key});

  @override
  Widget build(BuildContext context) {
    return switch (condition) {
      true => trueWidget,
      false => falseWidget,
    };
  }
}
