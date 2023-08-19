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
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Black",
          style: TextStyle(
            fontSize: 70,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white

          ),
        ),
      ),
body: Container(
  alignment: Alignment.center,

  margin: EdgeInsets.all(10),
  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  color: Colors.white,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.20,
        width: 150,
        color: Colors.black,
        //alignment: Alignment.center,
        child: Center(
          child: Text(
            "black",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50

            ),
          ),
        ),
  )
  ),
);
  }
}
