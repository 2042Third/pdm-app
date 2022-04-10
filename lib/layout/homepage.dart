// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "buttons.dart";
import "drawer.dart";
import "editors.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _count = 0;
  GlobalKey<ScaffoldState> _key = GlobalKey();
  Appbar_more_button drawer_button = Appbar_more_button();

  Editors edt = Editors();

  //
  // Constructor
  //
  ///
  _HomePage() {
    drawer_button.key =
        _key; // this is used for Appbar button to open the sidebar
  }
  // app-bar
  AppBar get_appbar() {
    return AppBar(leading: drawer_button.build());
  }

  // body
  Widget get_body_views(headerStyle) {
    return edt.textEdit();
    
    return ListView(
      children: [
        // ListTile(title: Text('Basics', style: headerStyle)),
      ],
    );
  }

  // container for the whole home page
  Scaffold get_home(TextStyle? headerStyle) {
    return Scaffold(
      key: _key,
      appBar: get_appbar(),
      body: get_body_views(headerStyle),
      drawer: SideDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle? headerStyle = Theme.of(context).textTheme.headline6;
    return get_home(headerStyle);
  }
}
