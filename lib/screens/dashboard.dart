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
      body: Column(children: <Widget>[
        FlatButton(
          onPressed: () {
            //Navigator.of(context).pop();
            Navigator.pushNamed(context, '/investment');

            //ADD Route here
          },
          child: Text(
            'Investment ',
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
        FlatButton(
          onPressed: () {
            //Navigator.of(context).pop();
            Navigator.pushNamed(context, '/collection');

            //ADD Route here
          },
          child: Text(
            'Collection ',
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ]),
    );
  }
}
