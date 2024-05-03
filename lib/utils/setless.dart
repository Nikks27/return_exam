import 'package:flutter/material.dart';
import 'package:return_exam/utils/detailspage.dart';
import 'cart.dart';
import 'homepage.dart';

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => homepage(),
        '/Details' : (context) => detailspage(),
        '/cart' : (context) => cart(),
      },
    );
  }
}
