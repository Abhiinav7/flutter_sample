import 'package:flutter/material.dart';
import 'package:flutter_sample/widgets_Learning/rowcoltext.dart';

class Flag extends StatefulWidget {

  const Flag({super.key});

  @override
  State<Flag> createState() => _FlagState();
}

class _FlagState extends State<Flag> {
  bool chk=false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Indian Flag",
          style: TextStyle(
              color: Colors.lightGreenAccent,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue, width: 5),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        elevation: 10,
        shadowColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 70,
              width: 300,
              color: Colors.green,
            ),
            Container(
                height: 70,
                width: 300,
                color: Colors.white70,
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2023/04/06/16/29/ashoka-chakra-7904695_1280.png')),
            Container(
              height: 70,
              width: 300,
              color: Colors.orange,
            ),
            Container(
              height: 70,
              width: 300,
              color: Colors.white70,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.camera,
                  size: 49,
                  color: Colors.pinkAccent,
                )),
            Checkbox(
              value: chk,
              onChanged: (bool? value) {
               setState(() {
                 chk=value!;
               });
              },

            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.flag),
      ),
    );
  }
}
