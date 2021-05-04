import 'package:i_tracker/constants/Theme/appcolors.dart';

import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({Key key, Widget title})
      : super(
            key: key,
            title: title,
            backgroundColor: ThemeColor.button,
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.notifications),
              )
            ]);
}
