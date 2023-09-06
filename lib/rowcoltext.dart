import 'package:flutter/material.dart';


class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  bool checkbox1 = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.pink,
            fontSize: 50,
            fontWeight: FontWeight.w600,
            letterSpacing: 10),
        title: Text(
          "Flutter",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.pink,
            width: 100,
            height: 100,
            child: const Text(
              "Is it black ?",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 6,
                  wordSpacing: 5,
                  shadows: [
                    Shadow(
                        color: Colors.black87,
                        offset: Offset(1, 5),
                        blurRadius: 12)
                  ]),
            ),
          ),
          Container(

            color: Colors.cyan,
            width: 100,
            height: 100,
            child: Checkbox(
                value: checkbox1,
                onChanged: (value) {
                 setState(() {
                   checkbox1 = value!;
                 });
                }
                ),
          ),
          Container(
            color: Colors.lightGreenAccent,
            width: 100,
            height: 100,
          )
        ],
      ),
    );
  }
}

