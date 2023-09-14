import 'package:flutter/material.dart';
import 'package:flutter_sample/work3.dart';

import 'card.dart';
import 'container.dart';
import 'image.dart';
import 'checkbox.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "demo app",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      debugShowCheckedModeBanner: false,
      home:  const StudiedWidgets()
    );
  }
}

