import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shupple_flutter/scene/home/index.dart';
import 'package:shupple_flutter/scene/register/index.dart';
import 'package:shupple_flutter/scene/signUp/index.dart';

import 'domain/model/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ja'),
      ],
      title: 'shupple',
      initialRoute: SRoute.register,
      routes: <String, WidgetBuilder>{
        SRoute.home: (BuildContext ctx) => HomeScene(),
        SRoute.signUp: (BuildContext ctx) => SignUpScene(),
        SRoute.register: (BuildContext ctx) => RegisterScene()
      },
    );
  }
}
