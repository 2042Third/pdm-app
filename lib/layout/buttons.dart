// ignore_for_file: camel_case_types, non_constant_identifier_names



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Appbar_more_button{
  

  GlobalKey<ScaffoldState> _key= GlobalKey();
  set key(GlobalKey<ScaffoldState> new_key) {
    _key=new_key;
  }

  Widget build (){
    return 	
      IconButton(
        splashRadius: 1,
        highlightColor: Colors.blue.withOpacity(0.5),
        icon: const Icon(Icons.more_vert_outlined),
        onPressed: () {
          _key.currentState?.openDrawer();
        },
      );
  }
}