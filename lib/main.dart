import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rolendar/home_view/home_view.dart';
import 'package:rolendar/saved_list/saved_view.dart';

import 'navigation/bottom_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade800,
        title: const Text('Ролендарь'),
      ),
      body: const MainList(),
      bottomNavigationBar: const BottomNavigation(),
      backgroundColor: Colors.deepPurple.shade700,
    );
  }
}
