import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shupple_flutter/model/route.dart';
import 'package:shupple_flutter/scene/home/index.dart';
import 'package:shupple_flutter/scene/signUp/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: SRoute.signUp,
      routes: <String, WidgetBuilder>{
        SRoute.home: (BuildContext ctx) => HomeScene(),
        SRoute.signUp: (BuildContext ctx) => SignUpScene()
      },
    );
  }
}
