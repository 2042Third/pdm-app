// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Editors {

  Widget textField1() {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
    );
  }

  Widget textField2() {
    return TextField(
      // Alignment
      textAlignVertical: TextAlignVertical.top ,

      // Multiline
      keyboardType: TextInputType.multiline,
      maxLines: null, 
      expands: true,
      
      // Behavior
      autocorrect : false,
      autofocus: false,

      // Looks
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'note title',
      ),
    );
  }

  Widget textEdit() {
    return Center(
        child:
            Container(
              padding: EdgeInsets.all(50.0) ,
              child: textField2()
            )
          );
  }
}
