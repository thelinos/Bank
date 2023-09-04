import 'package:bank_app/components/reusableComponents/transaction_details.dart';
import 'package:bank_app/components/reusableComponents/transaction_type.dart';
import 'package:flutter/material.dart';

class TransactionTiles extends StatelessWidget {
  const TransactionTiles({
    super.key,
    required this.transactionDate,
    required this.transactionAmount,
    required this.transactionDirection,
    required this.transactionNarration,
  });

  final String transactionDate;
  final String transactionAmount;
  final String transactionDirection;
  final String transactionNarration;

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
    return ListTile(
      leading: Image.asset(isCredit(transactionDirection)
          ? 'assets/images/credit.png'
          : 'assets/images/debit.png'),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'GHC $transactionAmount.00',
                style: const TextStyle(
                  color: Color(0xFF212121),
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  fontFamily: 'OpenSans',
                ),
              ),
              TransactionType(
                containerColor: isCredit(transactionDirection)
                    ? const Color(0xFFE0AD0F).withOpacity(0.08)
                    : const Color(0xFF78C8E1).withOpacity(0.08),
                textColor: isCredit(transactionDirection)
                    ? const Color(0xFFE0AD0F)
                    : const Color(0xFF022E64),
                transactionText:
                    isCredit(transactionDirection) ? 'Credit' : 'Debit',
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
                color: isCredit(transactionDirection)
                    ? const Color(0xFFE0AD0F)
                    : const Color(0xFF022E64),
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
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => TransactionDetail(
            transactionDate: transactionDate,
            transactionDirection: transactionDirection,
            transactionNarration: transactionNarration,
          ),
        );
      },
    );
  }
}
