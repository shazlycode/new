import 'package:flutter/material.dart';

class LayoutTheme extends StatelessWidget {
  const LayoutTheme(
      {super.key,
      required this.desktopLayout,
      required this.tabletLayout,
      required this.mobileLayout});
  final Widget desktopLayout;
  final Widget tabletLayout;
  final Widget mobileLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxWidth > 1200) {
        return desktopLayout;
      } else if (constraint.maxWidth > 800 && constraint.maxWidth <= 1200) {
        return tabletLayout;
      } else {
        return mobileLayout;
      }
    });
  }
}
