import 'package:bank_app/components/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  static const String id = 'transaction_screen';

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
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
              color: const Color(0xFFE1E6F0),
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
              child: const Row(
                children: [
                  Text(
                    'Transactions',
                    style: TextStyle(
                      color: Color(0xFF001530),
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xFFE1E6F0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 11.0,
                          horizontal: 42.0,
                        ),
                        child: const Text(
                          'All',
                          style: TextStyle(
                            color: Color(0xFF001530),
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 11.0,
                          horizontal: 42.0,
                        ),
                        child: const Text(
                          'Debit',
                          style: TextStyle(
                            color: Color(0xFF001530),
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 11.0,
                          horizontal: 42.0,
                        ),
                        child: const Text(
                          'Credit',
                          style: TextStyle(
                            color: Color(0xFF001530),
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 2.0,
                  color: Color(0xFF616161),
                )
              ]),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 63.5,
                      ),
                      color: Colors.white,
                      child: const Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.home,
                              color: Color(0xFF022E64),
                              size: 32.0,
                            ),
                          ),
                          Text(
                            'Home',
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
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF022E64),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 63.5),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.transfer_within_a_station_outlined,
                            size: 32,
                            color: Color(0xFFE6B014),
                          ),
                        ),
                        Text(
                          'Transaction',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
