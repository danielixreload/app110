import 'package:bol110pol/google_login_controller.dart';
import 'package:bol110pol/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(
        create: (context) => GoogleSignInController(),
        child: LoginPage(),
      )

    ],
     child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      ),
    );
  }
}

