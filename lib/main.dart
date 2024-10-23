import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/Providers/app_provider.dart';
import 'package:portifolio/firebase_options.dart';
import 'package:portifolio/main_screen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppProvider(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false, home: const MainScreen()));
  }
}
