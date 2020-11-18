import 'package:flutter/material.dart';
import 'package:shupple_flutter/model/route.dart';
import 'package:shupple_flutter/scene/home/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: SRoute.home,
      routes: <String, WidgetBuilder>{
        SRoute.home: (BuildContext ctx) => HomeScene()
      },
    );
  }
}
