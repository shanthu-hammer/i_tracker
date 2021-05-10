import 'package:flutter/material.dart';
import 'package:i_tracker/components/custom_appbar.dart';
//TODOemail,password*2, first name lastname.
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MyAppBar(title: Text("Registering",))

        //TODO "do the editing here"

        );
  }
}
