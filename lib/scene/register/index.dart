import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shupple_flutter/domain/entity/user.dart';
import 'package:shupple_flutter/domain/model/enum.dart';
import 'package:shupple_flutter/domain/model/time.dart';
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

  void _genderOnChange(Gender val) {
    setState(() {
      _gender = val;
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
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'ユーザー名',
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _name = value;
                            });
                          },
                          validator: (String val) =>
                              SValidator.nameValidator(val),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'email',
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                          ),
                          onChanged: (value) {
                            setState(() {
                              _email = value;
                            });
                          },
                          validator: (String val) =>
                              SValidator.emailValidator(val),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          children: [
                            Expanded(child: Text(STime.birthdate(_birthdate))),
                            RaisedButton(
                                color: Colors.purpleAccent,
                                child: Text("誕生日"),
                                onPressed: _showBirthdatePicker),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: RadioListTile(
                                    title: Text(Gender.Male.jpLabel),
                                    value: Gender.Male,
                                    groupValue: _gender,
                                    onChanged: _genderOnChange)),
                            Expanded(
                                child: RadioListTile(
                                    title: Text(Gender.Female.jpLabel),
                                    value: Gender.Female,
                                    groupValue: _gender,
                                    onChanged: _genderOnChange)),
                          ],
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
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
                        const SizedBox(
                          height: 30.0,
                        ),
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
                        const SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: "プロフィール"),
                          onChanged: (value) {
                            setState(() {
                              _profile = value;
                            });
                          },
                          validator: (val) => SValidator.profileValidator(val),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        RaisedButton(
                            child: Text("登録"),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                var req = UserRegisterRequest(
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
                                print(req.toJson());
                              }
                            })
                      ],
                    ))))
      ]),
    );
  }
}
