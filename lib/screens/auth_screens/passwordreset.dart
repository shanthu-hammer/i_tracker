import 'package:flutter/material.dart';
import 'package:i_tracker/components/custom_appbar.dart';
import 'package:i_tracker/constants/Theme/appcolors.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Password Reset'),
      ),
      backgroundColor: ThemeColor.background,
      body: Form(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Your Email',
                style: TextStyle(fontSize: 30, color: ThemeColor.text),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                style: TextStyle(color: ThemeColor.text),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    icon: Icon(
                      Icons.mail,
                      color: ThemeColor.button,
                    ),
                    hintText: 'Enter your Email or User-name'),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: ThemeColor.button,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  child: Text(
                    'Reset Password',
                    style: TextStyle(color: ThemeColor.background),
                  ),
                  onPressed: () {
                    //Navigator.pushNamed(context, '/');
                    Navigator.popUntil(
                        context,
                        (Route<dynamic> predicate) =>
                            predicate.isFirst); //todo new line
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: ThemeColor.button,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: ThemeColor.background),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
