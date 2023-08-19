import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        title: Text(
          "App",
          style: TextStyle(
            fontSize: 30,
            color: Colors.red
          ),
        )

      ),
body: Container(
  alignment: Alignment.center,
  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  color: Colors.black,
  padding: EdgeInsets.all(20),
  child: Container(
    margin: EdgeInsets.all(10),
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    color: Colors.cyan,
    child: Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      height: 150,
      width: 150,
      color: Colors.red,

      child: Text(

        " hei",
        style:TextStyle(
          fontSize:80,
          color: Colors.green,

        ) ,
      ),
    ),
  ),
),
    );
  }
}
