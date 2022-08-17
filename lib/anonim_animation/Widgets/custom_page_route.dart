// import 'dart:js';

import 'package:flutter/cupertino.dart';

class CustomAnimationRoute extends PageRouteBuilder {
  Widget? child;
  CustomAnimationRoute({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              ScaleTransition(
            scale: animation,
            child: child,
          ),
          transitionDuration: const Duration(milliseconds: 500),
        );
}
