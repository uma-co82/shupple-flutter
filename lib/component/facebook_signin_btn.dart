import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookSigninBtn {
  static Widget of({
    @required Widget child,
    @required Color color,
    @required Color textColor,
    @required OnPressed onPressed,
  }) =>
      RaisedButton(
          child: child,
          color: color,
          textColor: textColor,
          onPressed: onPressed);
}

typedef Future OnPressed();
