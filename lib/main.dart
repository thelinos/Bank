import 'package:flutter/material.dart';
import 'package:bank_app/components/screens/login_screen.dart';

void main() => runApp(const Bank());

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xFF022E64),
        scaffoldBackgroundColor: const Color(0xFF022E64),
      ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
