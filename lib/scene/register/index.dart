import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shupple_flutter/domain/model/enum.dart';

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
            RaisedButton(
                child: Text("誕生日"),
                onPressed: () async {
                  await showDatePicker(
                      context: context,
                      initialDate: DateTime(2002),
                      firstDate: DateTime(2002),
                      initialDatePickerMode: DatePickerMode.year,
                      lastDate: DateTime.now(),
                      locale: Locale('ja'));
                }),
            DropdownButton(
                value: "Male",
                items: Gender.values
                    .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                          child: Text(e.toJp),
                          value: EnumToString.convertToString(e),
                        ))
                    .toList(),
                onChanged: (val) {}),
            DropdownButton(
                value: "Hokkaido",
                items: Prefecture.values
                    .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                          child: Text(e.toJp),
                          value: EnumToString.convertToString(e),
                        ))
                    .toList(),
                onChanged: (val) {})
          ],
        ),
      ),
    );
  }
}
