import 'package:flutter/material.dart';

class Endpage extends StatelessWidget {
  final String calculateTip;
  final String preis;

  Endpage({this.calculateTip, this.preis});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'TIP-CALCULATOR',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Du solltest '),
                      TextSpan(
                        text: '$calculateTip€',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      TextSpan(text: ' bezahlen, statt '),
                      TextSpan(
                        text: '$preis€',
                        style: TextStyle(color: Colors.red),
                      ),
                    ]),
                textAlign: TextAlign.center,
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.refresh),
              )
            ],
          ),
        ));
  }
}
