import 'package:airflow/views/screens/DashBoard_Screen.dart';
import 'package:airflow/views/screens/Login_Screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplatshScreen extends StatefulWidget {
  const SplatshScreen({super.key});

  @override
  State<SplatshScreen> createState() => _SplatshScreenState();
}

class _SplatshScreenState extends State<SplatshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.data == null) {
              return const LoginScreen();
            } else {
              return const DashBoard_Screen();
            }
          }

          return const Text('');
        },
      ),
    );
  }
}
