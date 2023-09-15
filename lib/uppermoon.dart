import 'package:flutter/material.dart';

class UpperMoon extends StatefulWidget {
  const UpperMoon({super.key});

  @override
  State<UpperMoon> createState() => _UpperMoonState();
}

class _UpperMoonState extends State<UpperMoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 35),
        backgroundColor: Color(0xff008000),
        title: Text("Upper Moon's"),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.lightBlue,
            child: Image.asset(
              "assets/uppermoon/muzan.png",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Lord Muzan",
              style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.redAccent,
            child: Image.asset(
              "assets/uppermoon/kokushibu.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Kokushibo",
              style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.lightBlue,
            child: Image.asset(
              "assets/uppermoon/daki.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Daki",
              style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            height: 400,
            width: 400,
            color: Colors.black,
            child: Image.asset(
              "assets/uppermoon/akaza.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Akaza ",
              style: TextStyle(
                color: Colors.lightGreen,
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
