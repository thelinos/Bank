import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  static const String id = 'Forgot_password';

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                width: 343.0,
                height: 56.0,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'New Password',
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
                width: 343.0,
                height: 56.0,
                color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Confirm New Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFF212121),
                  ),
                ),
              ),
              const SizedBox(
                height: 68.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                width: 343.0,
                height: 56.0,
                color: const Color(0xFFE6B014),
                alignment: Alignment.center,
                child: const Text(
                  'Reset Password',
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
