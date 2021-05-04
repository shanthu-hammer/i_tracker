import 'package:flutter/material.dart';
import 'screens/auth_screens/passwordreset.dart';
import 'screens/auth_screens/signin.dart';
import 'screens/auth_screens/signup.dart';
import 'screens/collection.dart';
import 'screens/dashboard.dart';
import 'screens/investment.dart';

//todo deploying to google auth branch
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Investment(), //SignIn
      routes: {
        //auth_screens
        '/signup': (context) => SignUp(),
        '/passwordreset': (context) => PasswordReset(),

        //screens
        '/collection': (context) => Collection_deatils(),
        '/dashboard': (context) => Dashboard(),
        '/investment': (context) => Investment(),
      },
    );
  }
}
