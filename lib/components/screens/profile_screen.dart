import 'package:bank_app/components/screens/change_account_password_screen.dart';
import 'package:bank_app/components/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, this.customerStaticData});

  final List<Map<String, dynamic>>? customerStaticData;

  static const String id = 'profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: const Color(0xFFFDF8EC),
              child: Row(
                children: [
                  Image.asset('assets/images/Union_profile.png'),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('FIRST NAME'),
                                Text('JOHN'),
                              ],
                            ),
                            Column(
                              children: [
                                Text('GENDER'),
                                Text(customerStaticData?[0]["gender"] == "M"
                                    ? "MALE"
                                    : " "),
                              ],
                            ),
                            Column(
                              children: [
                                Text('ID'),
                                Text(customerStaticData?[0]["customerID"]),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Column(
                              children: [
                                Text('LAST NAME'),
                                Text('JIMOH'),
                              ],
                            ),
                            Column(
                              children: [
                                Text('TITLE'),
                                Text(customerStaticData?[0]["title"]),
                              ],
                            ),
                            Column(
                              children: [
                                Text('TITLE'),
                                Text(customerStaticData?[0]["title"]),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFFE1E6F0),
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: const Row(
                children: [
                  Text(
                    'Account Settings',
                    style: TextStyle(
                      color: Color(0xFF001530),
                      fontFamily: 'OpenSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (content) =>
                            const ChangeAccountPasswordScreen()));
              },
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 17.52,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 17.52,
                      ),
                      child: Icon(
                        Iconsax.lock_1,
                        color: Color(0xFF022E64),
                        size: 20,
                      ),
                    ),
                    Text(
                      'Change Account Password',
                      style: TextStyle(
                        color: Color(0xFF022E64),
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (content) => const LoginScreen()));
              },
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 17.52,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 17.52,
                      ),
                      child: Icon(
                        Iconsax.logout_1,
                        color: Color(0xFF022E64),
                        size: 20,
                      ),
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xFF022E64),
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              color: Color(0xFFE1E6F0),
              child: Row(
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                        color: Color(0xFF001530),
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 17.52,
              ),
              child: Row(
                children: [
                  Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      color: Color(0xFF022E64),
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 17.52,
              ),
              child: Row(
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Color(0xFF022E64),
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 17.52,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'App Version',
                style: TextStyle(
                  color: Color(0xFF022E64),
                  fontFamily: 'OpenSans',
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
