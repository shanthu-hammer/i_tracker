import 'package:flutter/material.dart';
import 'package:i_tracker/components/custom_appbar.dart';
import 'package:i_tracker/constants/Theme/appcolors.dart';

class Investment extends StatefulWidget {
  @override
  _InvestmentState createState() => _InvestmentState();
}

class _InvestmentState extends State<Investment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Investment Details',
          style: TextStyle(),
        ),
      ),
      backgroundColor: ThemeColor.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            //Name
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter the Name of the investment'),
              ),
              SizedBox(
                height: 25,
              ),
              //Description
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                    hintText: '(optional)'),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Total  amount',
                    hintText: 'Enter the total invested amount'),
              ),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Date',
                    hintText: 'Enter the date of investment'),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: ThemeColor.button,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    //Navigator.of(context).pop();
                    Navigator.pushNamed(context, '/dashboard');

                    //ADD Route here
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: ThemeColor.background),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
