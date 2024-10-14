import 'package:flutter/material.dart';
import 'package:portifolio/Providers/app_provider.dart';
import 'package:portifolio/main.dart';
import 'package:provider/provider.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = context.read<AppProvider>();
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.teal,
              child: const Row(children: [
                Expanded(
                  flex: 1,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage(
                          "https://play-lh.googleusercontent.com/TFam-bPjpofFmBTvCn1siOoKh9l2PKxOJ2zKqybv5QTDNstA7xS5rZJMw6VvN2JyGw=s94-rw",
                          scale: 20),
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Text(
                        "ShazlyCode is a highly regarded developer on Google Play, known for creating innovative and user-friendly mobile applications that cater to a wide range of users. With a focus on delivering quality apps, ShazlyCode is committed to enhancing the digital experience by offering well-designed, practical solutions across various categories such as productivity, health, and education.")),
                Expanded(
                    flex: 2,
                    child: Text(
                        "Each app developed by ShazlyCode is carefully crafted to meet the needs of its target audience, ensuring a seamless and enjoyable experience for users of all ages. ShazlyCode consistently updates its apps with new features, bug fixes, and improvements based on user feedback, ensuring that the apps remain reliable and up to date with the latest technologies.")),
              ]),
            )),
        Expanded(
            flex: 4,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemCount: appProvider.apps.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          appProvider.apps[index].title!,
                        ),
                        Expanded(
                          flex: 2,
                          child: Image.network(
                              errorBuilder: (context, err, stackTrace) {
                            return Text("err");
                          }, appProvider.apps[index].image!),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(appProvider.apps[index].description!))
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}