class DatabaseUpdate {
  CollectionDBUpdate(String CollectionTotalAmount, String CollectionRemarks,
      String CollectionToDate, String CollectionChoosenName) {
    print(
        "from the database file $CollectionTotalAmount and $CollectionRemarks and "
        "$CollectionToDate and $CollectionChoosenName ");
  }

  InvestmentDBUpdate(String investmentName, String InvestmentDescription,
      String InvestmentAmount, String InvestmentFromDate) {
    print(
        "from the database file $investmentName and $InvestmentDescription and "
        "$InvestmentAmount and $InvestmentFromDate");
  }

  DashboardDBUpdate(String a, String b) {
    print("from the database file $a and $b");
  }
}
