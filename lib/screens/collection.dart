import 'package:flutter/material.dart';
import 'package:i_tracker/components/custom_appbar.dart';
import 'package:i_tracker/constants/Theme/appcolors.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

/// dropdown_formfield reference
///https://pub.dev/documentation/dropdown_formfield/latest/

class Collection extends StatefulWidget {
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  String _myActivity;
  String _myActivityResult;

  final formKey = new GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

//TODO Save button class
  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
      Navigator.pushNamed(context, '/dashboard');
    }
  }

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
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              //Name
              children: <Widget>[
                DropDownFormField(
                  // border: OutlineInputBorder(),
                  titleText: 'Investment name',
                  hintText: 'Please choose one',
                  value: _myActivity,
                  onSaved: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      _myActivity = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "Stock Market",
                      "value": "Stock Market",
                    },
                    {
                      "display": "Fixed Deposit",
                      "value": "Fixed Deposit",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
                SizedBox(
                  height: 25,
                ),

                //Description

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
                  height: 25,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Remarks ',
                      hintText: '(optional) Notes regarding investment '),
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
                    onPressed: _saveForm, //() {
                    //Navigator.of(context).pop();
                    //Navigator.pushNamed(context, '/dashboard');

                    //ADD Route here
                    // },
                    child: Text(
                      'SAVE',
                      style: TextStyle(color: ThemeColor.background),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
