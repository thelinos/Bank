import 'package:bank_app/components/screens/home_screen.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                padding: const EdgeInsets.only(left: 20.0),
                width: 343.0,
                height: 56.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'New Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xFF212121),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Container(
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                padding: const EdgeInsets.only(left: 20.0),
                width: 343.0,
                height: 56.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Confirm New Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xFF212121),
                  ),
                ),
              ),
              const SizedBox(
                height: 68.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
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
                    'Reset Password',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Color(0xFF212121),
                      fontWeight: FontWeight.bold,
                    ),
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
