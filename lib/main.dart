import 'package:flutter/material.dart';
import 'package:quiz_app_ewabootcamp/screens/splash_screen.dart';

void main() {
  // main function is the entry point of the project
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 250, 73, 4)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
