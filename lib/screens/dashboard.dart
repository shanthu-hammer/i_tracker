import 'package:flutter/material.dart';
import 'package:i_tracker/constants/Theme/appcolors.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
            // Navigator.pushNamed(context, '/dashboard');

            //ADD Route here
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
