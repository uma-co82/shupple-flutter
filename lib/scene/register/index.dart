import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shupple_flutter/domain/entity/user.dart';
import 'package:shupple_flutter/domain/model/enum.dart';
import 'package:shupple_flutter/domain/model/validator.dart';

class RegisterScene extends StatefulWidget {
  @override
  _RegisterSceneState createState() => _RegisterSceneState();
}

class _RegisterSceneState extends State<RegisterScene> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _email = "";
  DateTime _birthdate = DateTime(2002);
  Gender _gender = Gender.Male;
  Prefecture _prefecture = Prefecture.Hokkaido;
  MatchingReason _matchingReason = MatchingReason.Renai;
  String _profile = "";

  void _showBirthdatePicker() async {
    var picked = await showDatePicker(
        context: context,
        initialDate: _birthdate,
        firstDate: DateTime(2002),
        initialDatePickerMode: DatePickerMode.year,
        lastDate: DateTime.now(),
        locale: Locale('ja'),
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData.dark(),
            child: child,
          );
        });
    if (picked != null)
      setState(() {
        _birthdate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Form(
            key: _formKey,
            child: Flexible(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: "ユーザー名",
                              labelStyle: TextStyle(fontSize: 12.0)),
                          onChanged: (value) {
                            setState(() {
                              _name = value;
                            });
                          },
                          validator: (String val) =>
                              SValidator.nameValidator(val),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "email"),
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                          validator: (String val) =>
                              SValidator.emailValidator(val),
                        ),
                        RaisedButton(
                            child: Text("誕生日"),
                            onPressed: _showBirthdatePicker),
                        DropdownButton(
                            value: EnumToString.convertToString(_gender),
                            items: Gender.values
                                .map((e) => DropdownMenuItem(
                                      child: Text(e.jpLabel),
                                      value: EnumToString.convertToString(e),
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                _gender =
                                    EnumToString.fromString(Gender.values, val);
                              });
                            }),
                        DropdownButton(
                            value: EnumToString.convertToString(_prefecture),
                            items: Prefecture.values
                                .map((e) => DropdownMenuItem(
                                      child: Text(e.jpLabel),
                                      value: EnumToString.convertToString(e),
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                _prefecture = EnumToString.fromString(
                                    Prefecture.values, val);
                              });
                            }),
                        DropdownButton(
                            value:
                                EnumToString.convertToString(_matchingReason),
                            items: MatchingReason.values
                                .map<DropdownMenuItem<String>>((e) =>
                                    DropdownMenuItem(
                                      child: Text(e.jpLabel),
                                      value: EnumToString.convertToString(e),
                                    ))
                                .toList(),
                            onChanged: (val) {
                              setState(() {
                                _matchingReason = EnumToString.fromString(
                                    MatchingReason.values, val);
                              });
                            }),
                        TextFormField(
                          decoration: InputDecoration(labelText: "プロフィール"),
                          onChanged: (value) {
                            setState(() {
                              _profile = value;
                            });
                          },
                          validator: (val) => SValidator.profileValidator(val),
                        ),
                        RaisedButton(
                            child: Text("登録"),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                var hoge = UserRegisterRequest(
                                    firebaseToken: "",
                                    name: _name,
                                    email: _email,
                                    gender:
                                        EnumToString.convertToString(_gender),
                                    birthdate: _birthdate.toString(),
                                    prefecture: EnumToString.convertToString(
                                        _prefecture),
                                    matchingReason:
                                        EnumToString.convertToString(
                                            _matchingReason),
                                    profile: _profile);
                                print(hoge.toJson());
                              }
                            })
                      ],
                    ))))
      ]),
    );
  }
}
