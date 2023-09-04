import 'package:bank_app/components/reusableComponents/transaction_details.dart';
import 'package:bank_app/components/reusableComponents/transaction_tiles.dart';
import 'package:bank_app/components/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TransactionScreen extends StatefulWidget {
  final List<Map<String, dynamic>>? customerStaticData;
  final List<Map<String, dynamic>>? customerTransactionData;

  const TransactionScreen({
    super.key,
    this.customerStaticData,
    this.customerTransactionData,
  });

  static const String id = 'transaction_screen';

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  void initState() {
    super.initState();
    updateUI(widget.customerStaticData, widget.customerTransactionData);
  }

  // For the customer static data
  late final String customerName;
  late final String title;

  // For the customer transaction data
  late final List<Map<String, dynamic>> customerTransactionData;

  void updateUI(List<Map<String, dynamic>>? customerStaticData,
      List<Map<String, dynamic>>? customerTransactionData) {
    // For the customer static data
    customerName = customerStaticData?[0]["customerName"];
    title = customerStaticData?[0]["title"];

    // For the customer transaction data
    this.customerTransactionData = customerTransactionData!;
  }

  late final List<Map<String, dynamic>> creditFilteredCustomerData =
      customerTransactionData
          .where((element) => element["transactionDirection"] == "C")
          .toList();

  late final List<Map<String, dynamic>> debitFilteredCustomerData =
      customerTransactionData
          .where((element) => element["transactionDirection"] == "D")
          .toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                                builder: (content) => ProfileScreen(
                                      customerStaticData:
                                          widget.customerStaticData,
                                    )));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(right: 88.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 7.0),
                              child: Image.asset('assets/images/Union.png'),
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
                color: const Color(0xFFf5f7fa),
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
                color: const Color(0xFFf5f7fa),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Color(0xffd5d9e3),
                  tabs: [
                    Tab(
                      child: Text(
                        'All',
                        style: TextStyle(
                          color: Color(0xFF001530),
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.0,
                        right: 14.0,
                      ),
                      child: Tab(
                        child: Text(
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
                    Tab(
                      child: Text(
                        'Credit',
                        style: TextStyle(
                          color: Color(0xFF001530),
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: TabBarView(
                    children: [
                      ListView.separated(
                        itemCount: customerTransactionData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => TransactionDetail(
                                  transactionDate:
                                      customerTransactionData[index]
                                          ["transactionDate"],
                                  transactionDirection:
                                      customerTransactionData[index]
                                          ["transactionDirection"],
                                  transactionNarration:
                                      customerTransactionData[index]
                                          ["transactionNarration"],
                                ),
                              );
                            },
                            child: TransactionTiles(
                              transactionDate: customerTransactionData[index]
                                  ["transactionDate"],
                              transactionAmount: customerTransactionData[index]
                                  ["transactionAmount"],
                              transactionDirection:
                                  customerTransactionData[index]
                                      ["transactionDirection"],
                              transactionNarration:
                                  customerTransactionData[index]
                                      ["transactionNarration"],
                            ),
                          );
                        },
                        separatorBuilder: (context, int index) => const Divider(
                          height: 0,
                        ),
                      ),
                      ListView.separated(
                        itemCount: debitFilteredCustomerData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => TransactionDetail(
                                  transactionDate:
                                      debitFilteredCustomerData[index]
                                          ["transactionDate"],
                                  transactionDirection:
                                      debitFilteredCustomerData[index]
                                          ["transactionDirection"],
                                  transactionNarration:
                                      debitFilteredCustomerData[index]
                                          ["transactionNarration"],
                                ),
                              );
                            },
                            child: TransactionTiles(
                              transactionDate: debitFilteredCustomerData[index]
                                  ["transactionDate"],
                              transactionAmount:
                                  debitFilteredCustomerData[index]
                                      ["transactionAmount"],
                              transactionDirection:
                                  debitFilteredCustomerData[index]
                                      ["transactionDirection"],
                              transactionNarration:
                                  debitFilteredCustomerData[index]
                                      ["transactionNarration"],
                            ),
                          );
                        },
                        separatorBuilder: (context, int index) => const Divider(
                          height: 0,
                        ),
                      ),
                      ListView.separated(
                        itemCount: creditFilteredCustomerData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => TransactionDetail(
                                  transactionDate:
                                      creditFilteredCustomerData[index]
                                          ["transactionDate"],
                                  transactionDirection:
                                      creditFilteredCustomerData[index]
                                          ["transactionDirection"],
                                  transactionNarration:
                                      creditFilteredCustomerData[index]
                                          ["transactionNarration"],
                                ),
                              );
                            },
                            child: TransactionTiles(
                              transactionDate: creditFilteredCustomerData[index]
                                  ["transactionDate"],
                              transactionAmount:
                                  creditFilteredCustomerData[index]
                                      ["transactionAmount"],
                              transactionDirection:
                                  creditFilteredCustomerData[index]
                                      ["transactionDirection"],
                              transactionNarration:
                                  creditFilteredCustomerData[index]
                                      ["transactionNarration"],
                            ),
                          );
                        },
                        separatorBuilder: (context, int index) => const Divider(
                          height: 0,
                        ),
                      ),
                    ],
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 63.5,
                        ),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Iconsax.home1,
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
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Iconsax.receipt4,
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
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// GestureDetector(
// child: Container(
// padding: const EdgeInsets.symmetric(
// vertical: 11.0,
// horizontal: 42.0,
// ),
// child: const Text(
// 'All',
// style: TextStyle(
// color: Color(0xFF001530),
// fontFamily: 'OpenSans',
// fontWeight: FontWeight.w600,
// fontSize: 14.0,
// ),
// ),
// ),
// ),
// GestureDetector(
// child: Container(
// padding: const EdgeInsets.symmetric(
// vertical: 11.0,
// horizontal: 42.0,
// ),
// child: const Text(
// 'Debit',
// style: TextStyle(
// color: Color(0xFF001530),
// fontFamily: 'OpenSans',
// fontWeight: FontWeight.w600,
// fontSize: 14.0,
// ),
// ),
// ),
// ),
// GestureDetector(
// child: Container(
// padding: const EdgeInsets.symmetric(
// vertical: 11.0,
// horizontal: 42.0,
// ),
// child: const Text(
// 'Credit',
// style: TextStyle(
// color: Color(0xFF001530),
// fontFamily: 'OpenSans',
// fontWeight: FontWeight.w600,
// fontSize: 14.0,
// ),
// ),
// ),
// ),
// ],
// ),
//
// Expanded(
// child: Container(
// color: Colors.white,
// child: ListView.separated(
// itemCount: customerTransactionData.length,
// itemBuilder: (context, index) {
// return GestureDetector(
// onTap: () {
// showModalBottomSheet(
// context: context,
// builder: (context) => TransactionDetail(
// transactionDate: customerTransactionData[index]
// ["transactionDate"],
// transactionDirection:
// customerTransactionData[index]
// ["transactionDirection"],
// transactionNarration:
// customerTransactionData[index]
// ["transactionNarration"],
// ),
// );
// },
// child: TransactionTiles(
// transactionDate: customerTransactionData[index]
// ["transactionDate"],
// transactionAmount: customerTransactionData[index]
// ["transactionAmount"],
// transactionDirection: customerTransactionData[index]
// ["transactionDirection"],
// transactionNarration: customerTransactionData[index]
// ["transactionNarration"],
// ),
// );
// },
// separatorBuilder: (context, int index) => const Divider(
// height: 0,
// ),
// ),
// ),
// ),
