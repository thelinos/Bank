import 'package:bank_app/components/screens/forgot_password.dart';
import 'package:bank_app/components/screens/home_screen.dart';
import 'package:bank_app/components/screens/login_screen.dart';

// import 'package:bank_app/components/screens/profile_screen.dart';
import 'package:bank_app/components/screens/transaction_screen.dart';

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
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF022E64),
        ),
      ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        TransactionScreen.id: (content) => const TransactionScreen(),
        // ProfileScreen.id: (content) => const ProfileScreen(),
      },
    );
  }
}
