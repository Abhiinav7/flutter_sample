import 'package:flutter/material.dart';

class Hashiras extends StatefulWidget {
  const Hashiras({super.key});

  @override
  State<Hashiras> createState() => _HashirasState();
}

class _HashirasState extends State<Hashiras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 35),
        backgroundColor: Color(0xff008000),
        title: Text("Hashira's"),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.lightBlue,
            child: Image.asset(
              "assets/hashira/misuri.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Mitsuri Kanroji",
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
              "assets/hashira/giyuu.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Giyu Tomioka",
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
              "assets/hashira/rengoku.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Rengoku",
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
              "assets/hashira/shinobu.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              "Shinobu Kocho ",
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
