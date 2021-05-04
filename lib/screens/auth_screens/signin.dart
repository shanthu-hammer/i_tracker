import 'package:flutter/material.dart';
import 'package:i_tracker/components/custom_appbar.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

//git checking
class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //MyAppbar can take in the title from a Text Widget
      appBar: MyAppBar(title: Text('Login Page')),
      //TODO "do the editing here"
    );
  }
}
