import 'package:bank_app/components/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ChangeAccountPasswordScreen extends StatefulWidget {
  const ChangeAccountPasswordScreen({super.key});

  static const String id = 'change_account_password_screen';

  @override
  State<ChangeAccountPasswordScreen> createState() =>
      _ChangeAccountPasswordScreenState();
}

class _ChangeAccountPasswordScreenState
    extends State<ChangeAccountPasswordScreen> {
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
                'Old Password',
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
              height: 29.0,
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
                  'Change Password',
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
    );
  }
}
