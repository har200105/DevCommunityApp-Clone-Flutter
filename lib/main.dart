import 'package:devapp/app/provider/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'meta/views/login_view/login_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
      title: 'Flutter Demo',
      home: Loginview(),
      theme: ThemeData(
        fontFamily: "Monteserat",
      ),
      darkTheme: ThemeData.dark(),
      ),
      providers: providers,
    );
  }
}

