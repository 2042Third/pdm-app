import 'package:flutter/material.dart';
import "layout/homepage.dart";
import "themes/colors.dart";
void main() {
  runApp(PdmApp());
}



class PdmApp extends StatelessWidget {
  
  String title = 'pdm';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch:  generateMaterialColor(Palette.primary),
        ).copyWith(
          secondary: generateMaterialColor(Palette.secondary),
        ),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
      ),
      home: const HomePage(),
    );
  }
}