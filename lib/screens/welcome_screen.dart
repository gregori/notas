import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notas/widgets/login_button.dart';
import 'package:notas/widgets/register_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Notas',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            LoginButton(onPressed: () {
              Navigator.pushNamed(context, '/login');
            }),
            RegisterButton(onPressed: () {
              Navigator.pushNamed(context, '/register');
            }),
          ],
        ),
      ),
    );
  }
}
