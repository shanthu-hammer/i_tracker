import 'package:flutter/material.dart';
import 'package:age/age.dart';

class CollectionCalc {
  CollectionCalc(int investId) {
    DbUpdate(Invest_name(investId), DateCalc(investId), AmountCalc(investId));
  }
  //fetch the name of investment
  Invest_name(int investId) {
    String name;
    return name;
  }

  //Time Period of Investment
  DateCalc(int investId) {
    DateTime _fromDate = DateTime(1990, 1, 20); //TODO fetch this from DB
    DateTime _toDate = DateTime(2000, 1, 20); //TODO fetch this from DB
    AgeDuration _timeDifference = Age.dateDifference(
        fromDate: _fromDate, toDate: _toDate, includeToDate: false);
    print("your number is $_timeDifference");
    return _timeDifference;
  }

  // Profit Amount
  AmountCalc(int investId) {
    double _initialAmount = 120.10; //TODO fetch this from DB
    double _finalAmount = 120.10; //TODO fetch this from DB
    double amountDifference = _finalAmount - _initialAmount;
    //DB where Id = investID set P&L as amountDifference
    return amountDifference;
  }

  DbUpdate(investId, invest_name, dateCalc) {
    //TODO Update the database table from here
  }
}
