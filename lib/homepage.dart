import 'package:flutter/material.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar:AppBar(

        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("Calculator",
        style: TextStyle(
            color: Colors.white,
          fontSize: 50,
        ),
        ),
      ) ,
      body: Container(

        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: Container(

          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle
          ),
          child:Center(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ),
    ),
    );
  }
}
