import 'package:flutter/material.dart';
import 'package:flutter_sample/shardedpreferencess.dart';
import 'package:flutter_sample/sharedpreference.dart';
import 'package:flutter_sample/uppermoon.dart';
import 'package:flutter_sample/work.dart';
import 'package:flutter_sample/work2.dart';
import 'package:flutter_sample/work3.dart';

import 'Listview.dart';
import 'LoginPage.dart';
import 'RadioButton.dart';
import 'Sharedpref_Sir.dart';
import 'bottomNavigationBar.dart';
import 'change_color.dart';
import 'demonslayer.dart';
import 'button.dart';
import 'card.dart';
import 'container.dart';
import 'counterApp.dart';
import 'drawer.dart';
import 'feedPage.dart';
import 'flag.dart';
import 'hashiras.dart';
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
        primarySwatch: Colors.teal
      ),
      debugShowCheckedModeBanner: false,
      home:  const Instagram()
    );
  }
}

