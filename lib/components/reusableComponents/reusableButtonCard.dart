import 'package:flutter/material.dart';

class ReusableButtonCard extends StatelessWidget {
  const ReusableButtonCard({
    super.key,
    this.text,
    this.cardColor,
    this.textColor,
    this.alignment,
  });

  final String? text;
  final Color? cardColor;
  final Color? textColor;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      width: 343.0,
      height: 56.0,
      color: cardColor,
      alignment: alignment,
      child: Text(
        text!,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: textColor!,
        ),
      ),
    );
  }
}
