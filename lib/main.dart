import 'package:bank_app/components/screens/change_account_password_screen.dart';
import 'package:bank_app/components/screens/forgot_password.dart';
import 'package:bank_app/components/screens/home_screen.dart';
import 'package:bank_app/components/screens/login_screen.dart';
import 'package:bank_app/components/screens/profile_screen.dart';
import 'package:bank_app/components/screens/splash_screen.dart';
import 'package:bank_app/components/screens/transaction_screen.dart';

import 'package:flutter/material.dart';

void main() => runApp(const Bank());

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF022E64),
        scaffoldBackgroundColor: const Color(0xFF022E64),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF022E64),
        ),
      ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        ForgotPasswordScreen.id: (context) => const ForgotPasswordScreen(),
        SplashScreen.id: (context) => const SplashScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        TransactionScreen.id: (content) => const TransactionScreen(),
        ProfileScreen.id: (content) => const ProfileScreen(),
        ChangeAccountPasswordScreen.id: (content) =>
            const ChangeAccountPasswordScreen(),
      },
    );
  }
}
