import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class SignUpScene extends StatefulWidget {
  @override
  _SignUpSceneState createState() => _SignUpSceneState();
}

class _SignUpSceneState extends State<SignUpScene> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FacebookLogin facebookSignIn = FacebookLogin();

  Future signInWithFacebook() async {
    final facebookLogin = FacebookLogin();
    // Facebookの認証画面が開く
    final facebookLoginResult = await facebookLogin.logIn((['email']));

    // Firebaseのユーザー情報と連携
    final AuthCredential credential =
        FacebookAuthProvider.credential(facebookLoginResult.accessToken.token);

    // Firebaseのユーザー情報を取得
    final user = (await _auth.signInWithCredential(credential)).user;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final currentUser = _auth.currentUser;
    assert(user.uid == currentUser.uid);
  }

  @override
  Widget build(BuildContext context) {
    Widget loginBtnFb = RaisedButton(
      child: Text("Sign in with Facebook"),
      color: Color(0xFF3B5998),
      textColor: Colors.white,
      onPressed: signInWithFacebook,
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [loginBtnFb],
        ),
      ),
    );
  }
}
