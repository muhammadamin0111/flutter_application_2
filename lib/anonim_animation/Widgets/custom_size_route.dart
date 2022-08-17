// import 'dart:js';

import 'package:flutter/cupertino.dart';

class CustomSizeRouter extends PageRouteBuilder {
  Widget? child;
  CustomSizeRouter({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              RotationTransition(
            turns: animation,
            child: child,
          ),
          transitionDuration: Duration(seconds: 2),
          reverseTransitionDuration: Duration(seconds: 3),
        );
}
