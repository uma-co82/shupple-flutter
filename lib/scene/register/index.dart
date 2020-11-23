import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScene extends StatefulWidget {
  @override
  _RegisterSceneState createState() => _RegisterSceneState();
}

class _RegisterSceneState extends State<RegisterScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "ユーザー名"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "email"),
            ),
            RaisedButton(onPressed: () async {
              await showDatePicker(
                  context: context,
                  initialDate: DateTime(2002),
                  firstDate: DateTime(2002),
                  initialDatePickerMode: DatePickerMode.year,
                  lastDate: DateTime.now(),
                  locale: Locale('ja'));
            })
          ],
        ),
      ),
    );
  }
}
