import 'package:flutter/material.dart';

class ExplanationText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          right: 30,
          left: 30,
        ),
        child: Text(
          'Mit dieser App kannst du Dir Trinkgeld Empfehlungen basierend auf deinem Preis und deiner Bewertung holen :-) krass oder 😎?!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ));
  }
}
