import 'dart:math';

import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        title: Text("Buttons"),
        titleTextStyle: TextStyle(
          color: Colors.blueAccent,
          fontSize: 50,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.pink)),
                onPressed: () {
                  print("hello my name is aarav"
                      "");
                },
                child: Text(
                  "TextButton",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                )),
            TextButton.icon(
                style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                      BorderSide(style: BorderStyle.solid, width: 2)),
                  foregroundColor:
                      MaterialStateProperty.all(Colors.deepPurpleAccent),
                  textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 80)),
                  //iconSize: MaterialStatePropertyAll(60)
                ),
                onPressed: () {},
                onLongPress: () {
                  print("hy");
                },
                icon: Icon(
                  Icons.ac_unit,
                  size: 80,
                ),
                label: const Text("haloo")),
            ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(12)),
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.lightGreenAccent),
                    foregroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple),
                    minimumSize: MaterialStateProperty.all(Size(70, 40)),
                    textStyle:
                        MaterialStatePropertyAll(TextStyle(fontSize: 70))),
                onPressed: () {
                  print("iam aaruu");
                },
                child: Text("Aaru")),
            OutlinedButton(
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(21)))),
                    side: MaterialStatePropertyAll(
                        BorderSide(color: Colors.lightGreen, width: 5)),
                    textStyle:
                        MaterialStatePropertyAll(TextStyle(fontSize: 30)),
                    minimumSize: MaterialStatePropertyAll(Size(95, 56))),
                onPressed: () {},
                child: Text("button")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.camera_enhance_sharp),
      ),
    );
  }
}
