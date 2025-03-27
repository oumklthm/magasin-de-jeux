import 'package:flutter/material.dart';
import 'package:gomestore/pages/home/home.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: ' Gome Store',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
