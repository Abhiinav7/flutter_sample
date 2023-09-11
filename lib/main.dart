import 'package:flutter/material.dart';
import 'package:flutter_sample/rowcoltext.dart';
import 'package:flutter_sample/stackwidget.dart';
import 'package:flutter_sample/test.dart';
import 'package:flutter_sample/textfield.dart';
import 'package:flutter_sample/work.dart';
import 'package:flutter_sample/work2.dart';
import 'package:flutter_sample/work3.dart';


import 'button.dart';
import 'flag.dart';
import 'homepage.dart';
import 'new.dart';

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
      home:StudiedWidgets()
    );
  }
}

