import 'package:bank_app/components/reusableComponents/transaction_type.dart';
import 'package:flutter/material.dart';

class TransactionTiles extends StatefulWidget {
  const TransactionTiles({
    super.key,
    required this.transactionDate,
    required this.transactionAmount,
    required this.transactionDirection,
    required this.transactionNarration,
  });

  final String transactionDate;
  final int transactionAmount;
  final String transactionDirection;
  final String transactionNarration;

  @override
  State<TransactionTiles> createState() => _TransactionTilesState();
}

class _TransactionTilesState extends State<TransactionTiles> {
  late final String transactionDate = widget.transactionDate;
  late final int transactionAmount = widget.transactionAmount;
  late final String transactionDirection =
      getDirectionTitle(widget.transactionDirection);
  late final String transactionNarration = widget.transactionNarration;
  late final String directionImageUrl =
      getDirectionImage(widget.transactionDirection);
  late final Color hashColor =
      getDirectionHashColor(widget.transactionDirection);
  late final Color containerColor =
      getDirectionContainerColor(widget.transactionDirection);
  late final Color directionTextColor =
      getDirectionTextColor(widget.transactionDirection);

  String getDirectionTitle(String n) {
    final String transactionNarration;
    if (n == 'C') {
      transactionNarration = 'Credit';
    } else {
      transactionNarration = 'Debit';
    }
    return transactionNarration;
  }

  String getDirectionImage(String d) {
    final String url;
    if (d == 'C') {
      url = 'assets/images/credit.png';
    } else {
      url = 'assets/images/debit.png';
    }
    return url;
  }

  Color getDirectionContainerColor(String n) {
    Color hashColor;

    if (n == 'C') {
      hashColor = const Color(0xFFE0AD0F).withOpacity(0.08);
    } else {
      hashColor = const Color(0xFF78C8E1).withOpacity(0.08);
    }

    return hashColor;
  }

  Color getDirectionHashColor(String n) {
    Color hashColor;

    if (n == 'C') {
      hashColor = const Color(0xFFE0AD0F);
    } else {
      hashColor = const Color(0xFF022E64);
    }

    return hashColor;
  }

  Color getDirectionTextColor(String n) {
    Color directionTextColor;

    if (n == 'C') {
      directionTextColor = Color(0xFFE0AD0F);
    } else {
      directionTextColor = const Color(0xFF022E64);
    }

    return directionTextColor;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(directionImageUrl),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'GHC $transactionAmount',
                style: const TextStyle(
                  color: Color(0xFF212121),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: 'OpenSans',
                ),
              ),
              TransactionType(
                containerColor: containerColor,
                textColor: directionTextColor,
                transactionText: transactionDirection,
              ),
            ],
          ),
          Text(
            transactionDate,
            style: const TextStyle(
              fontFamily: 'OpenSans',
              color: Color(0xFF616161),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            '#',
            style: TextStyle(
                fontFamily: 'OpenSans',
                color: hashColor,
                fontSize: 12.0,
                fontWeight: FontWeight.w700),
          ),
          Text(
            transactionNarration,
            style: const TextStyle(
              fontFamily: 'OpenSans',
              color: Color(0xFF616161),
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
