// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "buttons.dart";
import "drawer.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _count = 0;
  GlobalKey<ScaffoldState> _key = GlobalKey();
  Appbar_more_button drawer_button = Appbar_more_button();
  _HomePage (){
    drawer_button.key = _key;
  }
  // app-bar
  AppBar get_appbar() {
    
    return AppBar(
      // title: const Text('Animation Samples'),
      // leading: drawer_button.build(),
      leading: drawer_button.build()
    );
  }

  // body
  ListView get_body_views(headerStyle) {
    return ListView(
      children: [
        ListTile(title: Text('Basics', style: headerStyle)),
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