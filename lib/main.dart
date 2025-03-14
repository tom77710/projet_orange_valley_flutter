import 'package:flutter/material.dart';
import 'package:projet_orange_valley_flutter/pages/home_page.dart';

void main() {
  runApp(OrangeValleyApp());
}

class OrangeValleyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
