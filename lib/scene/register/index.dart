import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HogeScene extends StatefulWidget {
  @override
  _HogeSceneState createState() => _HogeSceneState();
}

class _HogeSceneState extends State<HogeScene> {
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
