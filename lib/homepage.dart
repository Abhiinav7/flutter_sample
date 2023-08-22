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
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: const Text(
          "Demo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 50,
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.80,
          width: MediaQuery.of(context).size.width * 0.80,
          margin: const EdgeInsets.only(bottom: 20,left: 20,right: 20,top: 20),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))),
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 10, color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(150)),
                boxShadow: const [BoxShadow(blurRadius: 10, spreadRadius: 10)],
              ),
              child: Icon(Icons.holiday_village)
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
        tooltip: "button",

      ),
    );
  }
}
