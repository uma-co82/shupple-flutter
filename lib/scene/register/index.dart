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
    String _name = "";
    String _email = "";
    DateTime _birthdate = DateTime(2002);
    Gender _gender = Gender.Male;
    Prefecture _prefecture = Prefecture.Hokkaido;
    MatchingReason _matchingReason = MatchingReason.Asobi;
    String _profile = "";

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
                      initialDate: _birthdate,
                      firstDate: DateTime(2002),
                      initialDatePickerMode: DatePickerMode.year,
                      lastDate: DateTime.now(),
                      locale: Locale('ja'));
                }),
            DropdownButton(
                value: _gender,
                items: Gender.values
                    .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                          child: Text(e.jpLabel),
                          value: EnumToString.convertToString(e),
                        ))
                    .toList(),
                onChanged: (val) {}),
            DropdownButton(
                value: _prefecture,
                items: Prefecture.values
                    .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                          child: Text(e.jpLabel),
                          value: EnumToString.convertToString(e),
                        ))
                    .toList(),
                onChanged: (val) {}),
            DropdownButton(
                value: _matchingReason,
                items: MatchingReason.values
                    .map<DropdownMenuItem<String>>((e) => DropdownMenuItem(
                          child: Text(e.jpLabel),
                          value: EnumToString.convertToString(e),
                        ))
                    .toList(),
                onChanged: (val) {}),
            TextFormField(
              decoration: InputDecoration(labelText: "プロフィール"),
            ),
          ],
        ),
      ),
    );
  }
}
