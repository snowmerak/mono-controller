library monocontroller;

import 'package:flutter/widgets.dart';

class MonoController extends InheritedWidget {
  const MonoController({Key? key, required child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static MonoController of(BuildContext context) {
    var controller =
        context.dependOnInheritedWidgetOfExactType<MonoController>();
    if (controller == null) {
      throw Exception('MonoController not found');
    }
    return controller;
  }
}
