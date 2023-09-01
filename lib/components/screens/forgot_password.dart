import 'package:bank_app/components/reusableComponents/reusable_card.dart';
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
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            width: 81.03,
            height: 32.0,
            margin: const EdgeInsets.only(right: 16.0, top: 16.0, bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/app_icon.png'),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ReusableCard(
                text: 'New Password',
                cardColor: Colors.white,
                textColor: Color(0xFF212121),
                alignment: Alignment.centerLeft),
            const SizedBox(
              height: 16.0,
            ),
            const ReusableCard(
              text: 'Confirm New Password',
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
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const ReusableCard(
                text: 'Reset Password',
                cardColor: Color(0xFFE6B014),
                textColor: Color(0xFF212121),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
