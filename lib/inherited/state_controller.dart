import 'package:example_inheritaned/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StateController extends StatefulWidget {
  final User user;
  final Widget child;
  const StateController({
    super.key,
    required this.user,
    required this.child,
  });

  static StateControllerState of(BuildContext context) {
    final inheritedContainer =
        context.dependOnInheritedWidgetOfExactType<InheritedContainer>();
    if (inheritedContainer == null) {
      throw FlutterError(
          "StateController .of() called with a context that does not contain an InheritedContainer");
    }
    return inheritedContainer.data;
  }

  @override
  State<StateController> createState() => StateControllerState();
}

class StateControllerState extends State<StateController> {
  late User user;
  @override
  void initState() {
    super.initState();
    user = widget.user;
  }

  //It use the setstate method to notify the framework that the state has changed,triggering a rebuild of the widget tree
  void updateUser({required name, required email, required password}) {
    setState(() {
      user = User(
        name: name ?? user.name,
        email: email ?? user.name,
        password: password ?? user.password,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedContainer(child: widget.child, data: this);
  }
}

//inherited Widget

class InheritedContainer extends InheritedWidget {
  final StateControllerState data;

  InheritedContainer({
    super.key,
    required super.child,
    required this.data,
  });
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
