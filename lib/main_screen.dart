import 'package:flutter/material.dart';
import 'package:portifolio/Layouts/Desktop%20Layout/desktop_layout.dart';
import 'package:portifolio/Layouts/Mobile%20Layout/mobile_layout.dart';
import 'package:portifolio/Layouts/Tablet%20Layout/tablet_layout.dart';
import 'package:portifolio/layout_them.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LayoutTheme(
          desktopLayout: DesktopLayout(),
          tabletLayout: TabletLayout(),
          mobileLayout: MobileLayout()),
    );
  }
}
