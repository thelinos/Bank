import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  final String? transactionDate;
  final String? transactionDirection;
  final String? transactionNarration;

  const TransactionDetail({
    super.key,
    this.transactionDate,
    this.transactionDirection,
    this.transactionNarration,
  });

  bool isCredit(String d) {
    bool n;
    if (d == 'C') {
      n = true;
    } else {
      n = false;
    }
    return n;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff626364),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.0),
                topRight: Radius.circular(32.0))),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              margin: EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Transaction Details',
                    style: TextStyle(
                      color: Color(0xff001530),
                      fontFamily: 'OpenSans',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 8.0,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Balance Before Transaction',
                          style: TextStyle(
                            color: Color(0xff212121),
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'GHC 0.00',
                          style: TextStyle(
                            color: Color(0xff212121),
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Balance After Transaction',
                          style: TextStyle(
                            color: Color(0xff212121),
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'GHC 10,000.00',
                          style: TextStyle(
                            color: Color(0xff212121),
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction Date',
                        style: TextStyle(
                          color: Color(0xff212121),
                          fontFamily: 'OpenSans',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        transactionDate!,
                        style: TextStyle(
                          color: Color(0xff212121),
                          fontFamily: 'OpenSans',
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Transaction Direction',
                          style: TextStyle(
                            color: Color(0xff212121),
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          isCredit(transactionDirection!) ? 'Credit' : 'Debit',
                          style: const TextStyle(
                            color: Color(0xff212121),
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Transaction Narration',
                        style: TextStyle(
                          color: Color(0xff212121),
                          fontFamily: 'OpenSans',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        transactionNarration!,
                        style: const TextStyle(
                          color: Color(0xff212121),
                          fontFamily: 'OpenSans',
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
