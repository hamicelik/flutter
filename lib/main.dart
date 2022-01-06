import 'package:flutter/material.dart';
import 'package:market_app1/App_Page/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
          primary: Colors.black,
        )),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
