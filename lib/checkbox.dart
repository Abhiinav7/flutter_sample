import 'package:flutter/material.dart';
import 'package:flutter_sample/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkbox = false;
  bool checkbox1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        centerTitle: true,
        title: const Text(
          "MyApp",
          style: TextStyle(
              fontSize: 50, color: Colors.indigo, fontWeight: FontWeight.w700),
        ),
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(120))),
        elevation: 18.9,
      ),
      body: Row(children: [
        Center(
          child: Container(
            height: 200,
            width: 200,
            color: Colors.blueGrey,
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    print("button clicked");
                  },
                  child: Icon(
                    Icons.heart_broken,
                    size: 100,
                    color: Colors.red,
                  )),
            ),
          ),
        ),
        Text(
          'heii',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              backgroundColor: Colors.lightGreenAccent,
              fontSize: 50,
              color: Colors.deepOrange),
        ),
        Checkbox(
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20), bottom: Radius.circular(20))),
            value: checkbox,
            onChanged: (bool? value) {
              setState(() {
                checkbox = value!;
              });
            }),
        Checkbox(
            shape: CircleBorder(side: BorderSide(style: BorderStyle.solid)),
            value: checkbox1,
            onChanged: (bool? value) {
              setState(() {
                checkbox1 = value!;
              });
            })
      ]),
    );
  }
}
