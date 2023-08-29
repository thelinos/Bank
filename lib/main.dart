// import 'package:bank_app/components/screens/forgot_password.dart';
// import 'package:bank_app/components/screens/home_screen.dart';
import 'package:bank_app/components/screens/login_screen.dart';

import 'package:flutter/material.dart';

void main() => runApp(const Bank());

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF022E64),
        scaffoldBackgroundColor: const Color(0xFF022E64),
        // appBarTheme: ,
      ),
      initialRoute: '/',
      routes: {
        // LoginScreen.id: (context) => const LoginScreen(),
        // ForgotPasswordScreen.id: (context) => ForgotPasswordScreen(),
        // HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
