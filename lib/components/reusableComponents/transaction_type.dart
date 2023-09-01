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

// Container(
// padding: const EdgeInsets.symmetric(
// vertical: 12.0, horizontal: 17.52),
// margin: const EdgeInsets.only(bottom: 1.45),
// child: Row(
// children: [
// Container(
// width: 46.02,
// height: 46.02,
// margin: const EdgeInsets.only(
// right: 14.02,
// ),
// child: Image.asset('assets/images/credit.png'),
// ),
// Column(
// children: [
// Row(
// children: [
// Row(
// children: [
// const Text(
// 'GHC 1,500.00',
// style: TextStyle(
// color: Color(0xFF212121),
// fontWeight: FontWeight.bold,
// fontSize: 16.0,
// fontFamily: 'OpenSans',
// ),
// ),
// Container(
// margin: const EdgeInsets.only(
// left: 7.0,
// right: 70.84,
// ),
// padding: EdgeInsets.symmetric(
// vertical: 5.26, horizontal: 8.76),
// decoration: BoxDecoration(
// color: Color(0xFFE0AD0F)
//     .withOpacity(0.08),
// borderRadius:
// BorderRadius.circular(5.26)),
// child: const Text(
// 'Credit',
// style: TextStyle(
// color: Color(0xFFE0AD0F),
// fontFamily: 'OpenSans',
// ),
// ),
// ),
// ],
// ),
// Container(
// child: const Text(
// '01-02-2021',
// style: TextStyle(
// color: Color(0xFF616161),
// fontSize: 10.0,
// fontWeight: FontWeight.w400,
// fontFamily: 'OpenSans',
// ),
// ),
// )
// ],
// ),
// const Text(
// '#Gift',
// style: TextStyle(fontFamily: 'OpenSans'),
// )
// ],
// )
// ],
// ),
// ),
//
