import 'package:bank_app/components/reusableComponents/transaction_tiles.dart';
import 'package:bank_app/components/screens/profile_screen.dart';
import 'package:bank_app/components/screens/transaction_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  final List? customerStaticData;
  final List? customerTransactionData;

  const HomeScreen({
    super.key,
    this.customerStaticData,
    this.customerTransactionData,
  });

  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    updateUI(widget.customerStaticData, widget.customerTransactionData);
  }

  // For the customer static data
  late final String customerName;
  late final String title;

  // For the customer transaction data
  late final List customerTransactionData;

  void updateUI(dynamic customerStaticData, dynamic customerTransactionData) {
    // For the customer static data
    customerName = customerStaticData[0]["customerName"];
    title = customerStaticData[0]["title"];

    // For the customer transaction data
    this.customerTransactionData = customerTransactionData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 8.0, left: 16.0, bottom: 16.0, right: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (content) => ProfileScreen()));
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 88.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 7.0),
                            child: SizedBox(
                                width: 52.12,
                                height: 42,
                                child: Image.asset('assets/images/Union.png')),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Good morning',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.0,
                                        fontFamily: 'OpenSans'),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '$title  $customerName',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                      fontFamily: 'OpenSans',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // App Icon to be placed below here
                  Center(
                    child: SizedBox(
                      width: 81.03,
                      height: 32,
                      child: Image.asset('assets/images/app_icon.png'),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 375,
              height: 156,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xFFE0AD0F), Color(0xFFA07801)],
                ),
              ),
              padding: EdgeInsets.only(
                left: 16.0,
                right: 16.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Account Balance',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.0,
                                fontFamily: 'OpenSans',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'GHC 10,000.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 36.0,
                              ),
                            ),
                          ],
                        ),
                      ],
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
              color: Color(0xFFE1E6F0),
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Row(
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
                child: ListView.separated(
                  itemCount: customerTransactionData.length,
                  itemBuilder: (context, index) {
                    return TransactionTiles(
                      transactionDate: customerTransactionData[index]
                          ["transactionDate"],
                      transactionAmount: customerTransactionData[index]
                          ["transactionAmount"],
                      transactionDirection: customerTransactionData[index]
                          ["transactionDirection"],
                      transactionNarration: customerTransactionData[index]
                          ["transactionNarration"],
                    );
                  },
                  separatorBuilder: (context, int index) => const Divider(
                    height: 0,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 63.5,
                    ),
                    color: Color(0xFF022E64),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(4.0),
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
                              builder: (content) => TransactionScreen(
                                    customerStaticData:
                                        widget.customerStaticData,
                                    customerTransactionData:
                                        widget.customerTransactionData,
                                  )));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 63.5),
                      child: Column(
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
