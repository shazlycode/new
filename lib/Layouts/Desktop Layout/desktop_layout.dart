import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.teal,
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    radius: 40,
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Text(
                        "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata")),
                Expanded(
                    flex: 2,
                    child: Text(
                        "datadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadatadata")),
              ]),
            )),
        Expanded(
            flex: 4,
            child: Container(
              color: Colors.amber[50],
            ))
      ],
    );
  }
}
