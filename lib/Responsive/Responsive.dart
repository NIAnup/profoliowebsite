import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  Responsive(
      {super.key,
      required this.Mobile,
      required this.Tablet,
      required this.Desktop});
  final Widget Mobile;
  final Widget Tablet;
  final Widget Desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return Mobile;
        } else if (constraints.maxWidth < 1280) {
          return Tablet;
        } else {
          return Desktop;
        }
      },
    );
  }
}
