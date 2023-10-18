import 'package:flutter/material.dart';
import 'package:flutter_sample/sample_works/LoginPage/create_account.dart';
import 'package:flutter_sample/sample_works/LoginPage/login_page.dart';
import 'package:flutter_sample/sample_works/shared_api.dart';
import 'package:flutter_sample/sample_works/shared_preference/ChatScreen.dart';
import 'package:flutter_sample/sample_works/shared_preference/ChatScreen2.dart';
import 'package:flutter_sample/sample_works/shared_preference/LoginPage.dart';
import 'package:flutter_sample/sample_works/work3.dart';
import 'package:flutter_sample/shared_preference/shardedpreferencess.dart';
import 'package:flutter_sample/shared_preference/sharedPref.dart';
import 'package:flutter_sample/shared_preference/sharedPrerf_Athira.dart';
import 'package:flutter_sample/shared_preference/sharedpreference.dart';
import 'package:flutter_sample/sample_works/work.dart';
import 'package:flutter_sample/sample_works/work2.dart';
import 'package:flutter_sample/widgets_Learning/Alert%20dialog.dart';
import 'package:flutter_sample/widgets_Learning/DismisibleWidget.dart';
import 'package:flutter_sample/widgets_Learning/Grid.dart';
import 'package:flutter_sample/widgets_Learning/Listview.dart';
import 'package:flutter_sample/widgets_Learning/Snakbar_.dart';
import 'package:flutter_sample/widgets_Learning/button.dart';
import 'package:flutter_sample/widgets_Learning/card.dart';
import 'package:flutter_sample/widgets_Learning/drawer.dart';
import 'package:flutter_sample/widgets_Learning/rowcoltext.dart';
import 'package:flutter_sample/widgets_Learning/wrap.dart';

import 'Api learning/products/Main_Ui.dart';
import 'widgets_Learning/TabBars.dart';
import 'Whatsapp/whatsapp_home_screen.dart';
import 'widgets_Learning/bottomNavigationBar.dart';
import 'sample_works/change_color.dart';
import 'sample_works/gallery/demonslayer.dart';
import 'widgets_Learning/container.dart';
import 'sample_works/counterApp.dart';
import 'sample_works/feedPage.dart';
import 'sample_works/flag.dart';
import 'Api learning/http_learning.dart';
import 'Api learning/http_sir.dart';
import 'widgets_Learning/image.dart';
import 'widgets_Learning/checkbox.dart';
import 'sample_works/shared_preference/CreateAccount.dart';


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
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
        //primaryColor: Colors.purpleAccent
      ),
      debugShowCheckedModeBanner: false,
      home:  const DrawerWidget()
    );
  }
}

