import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Userinput extends StatelessWidget {
  final formKey;
  final myControllerPreis;

  Userinput({
    this.myControllerPreis,
    this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 30,
        left: 30,
        top: 20,
      ),
      child: Form(
        key: formKey,
        child: TextFormField(
          validator: (String value) {
            if (value.isEmpty) {
              return 'Bitte gib einen Wert ein!';
            } else if (double.tryParse(value) == null) {
              return 'Bitte gib einen gültigen Wert ein!';
            }
            return null;
          },
          onChanged: null,
          keyboardType: TextInputType.number,
          controller: myControllerPreis,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'PREIS',
            hintText: 'Preis den du für dein Essen bezahlt hast in Euro',
            suffixIcon: IconButton(
              onPressed: () => myControllerPreis.clear(),
              icon: Icon(Icons.clear),
            ),
          ),
        ),
      ),
    );
  }
}
