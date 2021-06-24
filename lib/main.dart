import 'package:fave_images/src/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(FaveImagesApp());

class FaveImagesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Home(title: 'Fave Images'),
    );
  }
}
