import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './explanation_text.dart';
import './ratingbar.dart';
import './endpage.dart';
import './userinput.dart';
import './calculate_tip.dart';

void main() => runApp(MaterialApp(home: Startpage()));

class Startpage extends StatefulWidget {
  @override
  _StartpageState createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  final myControllerPreis = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  double myRating = 0;

  @override
  void disposePreis() {
    // Clean up the controller when the widget is disposed.
    myControllerPreis.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ExplanationText(),
          Userinput(
            myControllerPreis: myControllerPreis,
            formKey: formKey,
          ),
          UserRatingBar(
            onRatingUpdate: (double val) {
              setState(() => myRating = val);
            },
          ),
          FloatingActionButton(
            onPressed: () {
              if (formKey.currentState.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Endpage(
                            calculateTip: calculateTip(
                              myControllerPreis.text,
                              myRating,
                            ),
                            preis: myControllerPreis.text,
                          )),
                );
              }
            },
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
