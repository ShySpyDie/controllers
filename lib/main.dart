import 'package:controllers_practice/presentation/controller.dart';
import 'package:controllers_practice/presentation/controller_a.dart';
import 'package:flutter/material.dart';
import 'package:controllers_practice/presentation/home_page.dart';
import 'package:controllers_practice/presentation/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(controller: AddCount(), controllerA: ButtonController()),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
