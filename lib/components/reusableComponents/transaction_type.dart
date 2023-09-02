import 'package:flutter/material.dart';

class TransactionType extends StatelessWidget {
  const TransactionType(
      {super.key,
      required this.containerColor,
      required this.textColor,
      required this.transactionText});

  final Color containerColor;
  final Color textColor;
  final String transactionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 7.0,
      ),
      padding: const EdgeInsets.symmetric(vertical: 5.26, horizontal: 8.76),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(5.26)),
      child: Text(
        transactionText,
        style: TextStyle(
          color: textColor,
          fontFamily: 'OpenSans',
        ),
      ),
    );
  }
}
