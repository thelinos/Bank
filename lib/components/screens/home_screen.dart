import 'package:bank_app/components/screens/profile_screen.dart';
import 'package:bank_app/components/screens/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 16.0, bottom: 16.0, right: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (content) => const ProfileScreen()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(right: 88.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 7.0),
                            child: Image.asset('images/Union.png'),
                          ),
                          Column(
                            children: [
                              Container(
                                child: const Text(
                                  'Good morning',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                      fontFamily: 'OpenSans'),
                                ),
                              ),
                              Container(
                                child: const Text(
                                  'Mr. John Jimoh',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                    fontFamily: 'OpenSans',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // App Icon to be placed below here
                  Center(
                    child: Container(
                      width: 81.03,
                      height: 32,
                      child: Image.asset('assets/images/app_icon.png'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(0xFFE0AD0F), Color(0xFFA07801)],
              )),
              padding: const EdgeInsets.only(
                  top: 36.45, left: 16.0, right: 16.0, bottom: 37.0),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Account Balance',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  Text(
                    'GHC 10,000.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 36.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Checking Account',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      Text(
                        '875431143137098707',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          fontFamily: 'OpenSans',
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: const Color(0xFFE1E6F0),
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Transaction',
                    style: TextStyle(
                      color: Color(0xFF001530),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: Color(0xFF022E64),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 17.52),
                      margin: const EdgeInsets.only(bottom: 1.45),
                      child: Row(
                        children: [
                          Container(
                            width: 46.02,
                            height: 46.02,
                            margin: const EdgeInsets.only(
                              right: 14.02,
                            ),
                            child: Image.asset('assets/images/debit.png'),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'GHC 50.00',
                                        style: TextStyle(
                                          color: Color(0xFF212121),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 7.0,
                                          right: 96.84,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5.26, horizontal: 8.76),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF78C8E1),
                                            borderRadius:
                                                BorderRadius.circular(5.26)),
                                        child: const Text(
                                          'Debit',
                                          style: TextStyle(
                                            color: Color(0xFF022E64),
                                            fontFamily: 'OpenSans',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: const Text(
                                      '01-02-2021',
                                      style: TextStyle(
                                        color: Color(0xFF616161),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'OpenSans',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                '#Gift',
                                style: TextStyle(
                                  fontFamily: 'OpenSans',
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 17.52),
                      margin: const EdgeInsets.only(bottom: 1.45),
                      child: Row(
                        children: [
                          Container(
                            width: 46.02,
                            height: 46.02,
                            margin: const EdgeInsets.only(
                              right: 14.02,
                            ),
                            child: Image.asset('assets/images/credit.png'),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        'GHC 1,500.00',
                                        style: TextStyle(
                                          color: Color(0xFF212121),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          fontFamily: 'OpenSans',
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                          left: 7.0,
                                          right: 70.84,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5.26, horizontal: 8.76),
                                        decoration: BoxDecoration(
                                            color: Color(0xFFE0AD0F),
                                            borderRadius:
                                                BorderRadius.circular(5.26)),
                                        child: const Text(
                                          'credit',
                                          style: TextStyle(
                                            color: Color(0xFFE0AD0F),
                                            fontFamily: 'OpenSans',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    child: const Text(
                                      '01-02-2021',
                                      style: TextStyle(
                                        color: Color(0xFF616161),
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'OpenSans',
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                '#Gift',
                                style: TextStyle(fontFamily: 'OpenSans'),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 63.5,
                    ),
                    color: const Color(0xFF022E64),
                    child: const Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Iconsax.home1,
                            color: Color(0xFFE6B014),
                            size: 32.0,
                          ),
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xFFE6B014),
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                            fontFamily: 'OpenSans',
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (content) => const TransactionScreen()));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 63.5),
                      child: const Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Iconsax.receipt4,
                              size: 32,
                              color: Color(0xFF022E64),
                            ),
                          ),
                          Text(
                            'Transaction',
                            style: TextStyle(
                              color: Color(0xFF022E64),
                              fontWeight: FontWeight.w700,
                              fontSize: 11,
                              fontFamily: 'OpenSans',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
