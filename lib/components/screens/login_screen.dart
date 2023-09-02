import 'package:bank_app/components/reusableComponents/reusable_card.dart';
import 'package:bank_app/components/screens/forgot_password.dart';
import 'package:bank_app/components/screens/splash_screen.dart';
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
              Padding(
                padding: const EdgeInsets.only(bottom: 91.0),
                child: Image.asset('assets/images/app_icon.png'),
              ),
              const ReusableCard(
                text: 'Email',
                cardColor: Colors.white,
                textColor: Color(0xFF212121),
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const ReusableCard(
                text: 'Password',
                cardColor: Colors.white,
                textColor: Color(0xFF212121),
                alignment: Alignment.centerLeft,
              ),
              const SizedBox(
                height: 68.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()),
                  );
                },
                child: const ReusableCard(
                  text: 'Login',
                  cardColor: Color(0xFFE6B014),
                  textColor: Color(0xFF212121),
                  alignment: Alignment.center,
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
                      fontFamily: 'OpenSans',
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
