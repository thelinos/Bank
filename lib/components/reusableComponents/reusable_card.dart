import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    required this.text,
    required this.cardColor,
    required this.textColor,
    required this.alignment,
  });

  final String text;
  final Color cardColor;
  final Color textColor;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0),
      padding: const EdgeInsets.only(left: 20.0),
      width: 343.0,
      height: 56.0,
      alignment: alignment,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'OpenSans',
          color: textColor,
        ),
      ),
    );
  }
}
