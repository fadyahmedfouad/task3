import 'package:flutter/material.dart';
import 'package:untitled2/ui/screens/hom_nav_bar.dart';
void main() {
  runApp(const MyApp() as Widget);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const HomeNavBar(),
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        )
    );
  }
}

