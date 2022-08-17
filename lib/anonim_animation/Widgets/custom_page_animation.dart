// import 'dart:js';

import 'package:flutter/cupertino.dart';

class CustomPageRouteBuilder extends PageRouteBuilder {
  Widget? child;
  CustomPageRouteBuilder({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) =>
              SlideTransition(
            position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(animation),
            child: child,
          ),
          transitionDuration: const Duration(milliseconds: 500),
        );
}
