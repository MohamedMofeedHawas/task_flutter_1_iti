import 'package:flutter/material.dart';
import 'package:task_flutter_1_iti/screen/firstscreen/view.dart';
import 'package:task_flutter_1_iti/screen/secondscreen/view.dart';
import 'package:task_flutter_1_iti/splach/view.dart';

void main() => runApp(MyAppScreen());

class MyAppScreen extends StatelessWidget {
  const MyAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplachScreen(),
    );
  }
}

