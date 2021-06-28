import 'package:flutter/material.dart';
import 'package:i_tracker/businesslogic/dbupdate.dart';
import 'package:i_tracker/businesslogic/profitcalculation.dart';
import 'package:i_tracker/components/custom_appbar.dart';
import 'package:i_tracker/constants/Theme/appcolors.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:age/age.dart';

/// dropdown_formfield reference
///https://pub.dev/documentation/dropdown_formfield/latest/

class Collection extends StatefulWidget {
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  //String _remarks, _totalAmount;
  // String _remarks = "testing";
  final _totalAmount = TextEditingController();
  final _remarks = TextEditingController();
  final _toDate = TextEditingController();
  //final myController = TextEditingController();

  String _myActivity;
  String _myActivityResult;
  static int invest_Id;
  CollectionCalc C = new CollectionCalc(invest_Id);
  DatabaseUpdate D = new DatabaseUpdate();
  //Class to calculate and store collected data
  final formKey = new GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _myActivity = '';
    // _myActivityResult
  }

//TODO Save button class
  _CsaveForm() {
    Save_Collection();
    print(_totalAmount.text);
    AgeDuration difference = C.DateCalc(2000);

    print(difference);

    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
        print(_myActivityResult);
        print(_totalAmount.text);
        print(_toDate.text);
        D.CollectionDBUpdate(
            _totalAmount.text, _remarks.text, _toDate.text, _myActivityResult);
      });
      Navigator.pushNamed(context, '/dashboard');
    }
  }

  //@override
  // void dispose() {
  // Clean up the controller when the widget is disposed.
  //  myController.dispose();
  //  super.dispose();
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          'Collection Details',
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
              children: <Widget>[
                //Name

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

                //AMOUNT

                TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'This cannot be empty';
                    }
                  },
                  //onSaved: (input) => _totalAmount,
                  controller: _totalAmount,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Total  amount',
                      hintText: 'Enter the total invested amount'),
                ),
                SizedBox(
                  height: 25,
                ),

                //DATE

                TextFormField(
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'This cannot be empty';
                    }
                  },
                  controller: _toDate,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Date',
                      hintText: 'Enter the date of investment'),
                ),
                SizedBox(
                  height: 25,
                ),

                //REMARKS

                TextFormField(
                  controller: _remarks,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Remarks ',
                      hintText: '(optional) Notes regarding investment '),
                ),
                SizedBox(
                  height: 50,
                ),

                //SAVE BUTTON

                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: ThemeColor.button,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: _CsaveForm, //() {
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

  Future<void> Save_Collection() async {
    print(_totalAmount.text);
  }
}
