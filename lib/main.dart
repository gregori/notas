import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notas/screens/login_screen.dart';
import 'package:notas/screens/main_screen.dart';
import 'package:notas/screens/register_screen.dart';
import 'package:notas/screens/welcome_screen.dart';
import 'package:notas/utils/firebase_options.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(options: DefaultFirebaseOptions.options),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            log(snapshot.error.toString());
            return const MaterialApp(
              home: Center(
                child: Text('Erro inicializando firebase'),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              initialRoute: '/',
              routes: {
                '/': (context) => const WelcomeScreen(),
                '/login': (context) => const LoginScreen(),
                '/register': (context) => const RegisterScreen(),
                '/main': (context) => const MainScreen(),
              },
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
