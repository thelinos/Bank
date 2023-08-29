import 'package:bank_app/components/screens/forgot_password.dart';
import 'package:bank_app/components/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                padding: const EdgeInsets.only(left: 20.0),
                width: 343.0,
                height: 56.0,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Text(
                  'Email',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF212121),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                padding: EdgeInsets.only(left: 20.0),
                width: 343.0,
                height: 56.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF212121),
                  ),
                ),
              ),
              const SizedBox(
                height: 68.0,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const HomeScreen()),
                  // );
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                  width: 343.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                      color: const Color(0xFFE6B014),
                      borderRadius: BorderRadius.circular(20.0)),
                  alignment: Alignment.center,
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen()),
                  );
                },
                child: const Text('Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFFF5F5F5),
                      fontWeight: FontWeight.w400,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
