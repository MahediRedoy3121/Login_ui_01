import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'secend_screen.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: secend_screen(),
    );
  }
}
