import 'package:airflow/views/screens/Login_Screen.dart';
import 'package:flutter/material.dart';
import 'package:airflow/views/screens/DashBoard_Screen.dart';
import 'package:airflow/views/screens/home_page.dart';

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
      debugShowCheckedModeBanner: false,
      routes: {
        //'/': (context) => const LoginScreen(),
        '/': (context) => const DashBoard_Screen(),
      },
    );
  }
}
