import 'package:flutter/material.dart';
import 'quote.dart';

class CardQuote extends StatelessWidget {
  final Quote quote;
  const CardQuote({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(2, 2), // changes position of shadow
          ),
        ]
      ),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(quote.text, style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold, fontSize: 16)),
          Text('-${quote.author}', style: TextStyle(fontFamily: 'Montserrat', fontStyle: FontStyle.italic, fontSize: 12)),
        ],
      )
    );
  }
}