import 'package:flutter/material.dart';
import 'package:languagechangerapp/homepage.dart';

void main() {
  runApp(LaguageChangerApp());
}
class LaguageChangerApp extends StatelessWidget {
  const LaguageChangerApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomePage()
    );
  }
}

