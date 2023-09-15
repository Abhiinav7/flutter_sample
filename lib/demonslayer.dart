import 'package:flutter/material.dart';
import 'package:flutter_sample/uppermoon.dart';

import 'hashiras.dart';

class DemonSlayer extends StatefulWidget {
  const DemonSlayer({super.key});

  @override
  State<DemonSlayer> createState() => _DemonSlayerState();
}

class _DemonSlayerState extends State<DemonSlayer> {
  int img = 0;

  Widget IMG() {
    if (img == 0) {
      return Container(
          width: 500,
          height: 500,
          child: Image.asset(
            "assets/demonslayer/insoku.jpg",
            fit: BoxFit.cover,
          ));
    } else if (img == 1) {
      return Container(
          width: 500,
          height: 500,
          child: Image.asset(
            "assets/demonslayer/muichiro.jpg",
            fit: BoxFit.cover,
          ));
    } else if (img == 2) {
      return Container(
          width: 500,
          height: 500,
          child: Image.asset(
            "assets/demonslayer/nezuko.jpg",
            fit: BoxFit.cover,
          ));
    } else if (img == 3) {
      return Container(
          width: 500,
          height: 500,
          child: Image.asset(
            "assets/demonslayer/tanjiroo.jpg",
            fit: BoxFit.cover,
          ));
    } else {
      return Container(
          width: 500,
          height: 500,
          child: Image.asset(
            "assets/demonslayer/zenitsu.jpg",
            fit: BoxFit.cover,
          ));
    }
  }

  Widget IMGNAME() {
    if (img == 0) {
      return Text(
        "Insoku",
        style: TextStyle(
          color: Colors.lightGreen,
          fontWeight: FontWeight.w700,
          fontSize: 40,
        ),
      );
    } else if (img == 1) {
      return Text(
        "Muichiro",
        style: TextStyle(
          color: Colors.lightGreen,
          fontWeight: FontWeight.w700,
          fontSize: 40,
        ),
      );
    } else if (img == 2) {
      return Text(
        "Nezuko",
        style: TextStyle(
          color: Colors.lightGreen,
          fontWeight: FontWeight.w700,
          fontSize: 40,
        ),
      );
    } else if (img == 3) {
      return Text(
        "Tanjiro",
        style: TextStyle(
          color: Colors.lightGreen,
          fontWeight: FontWeight.w700,
          fontSize: 40,
        ),
      );
    } else {
      return Text(
        "Zenitsu",
        style: TextStyle(
          color: Colors.lightGreen,
          fontWeight: FontWeight.w700,
          fontSize: 40,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 35),
        backgroundColor: Color(0xff008000),
        title: Text("Anime Gallery"),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 80,
            child: Text(
              "DemonSlayer",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  shadows: [
                    Shadow(
                        offset: Offset(2, 2),
                        color: Colors.pink,
                        blurRadius: 13)
                  ]),
            ),
          ),
          Positioned(top: 80, left: 0, child: IMG()),
          Positioned(top: 580, left: 140, child: IMGNAME()),
          Positioned(
              top: 600,
              right: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Hashiras()));
                },
                icon: Icon(Icons.last_page_sharp, color: Colors.blueAccent),
              )),
          Positioned(
              top: 600,
              left: 20,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UpperMoon()));
                },
                icon: Icon(
                  Icons.first_page,
                  color: Colors.blueAccent,
                ),
              )),
          Positioned(
              top: 650,
              left: 110,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (img == 4) {
                          img = 3;
                        } else if (img == 3) {
                          img = 2;
                        } else if (img == 2) {
                          img = 1;
                        } else if (img == 1) {
                          img = 0;
                        } else {
                          img = 4;
                        }
                      });
                    },
                    child: Icon(Icons.skip_previous),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (img == 0) {
                            img = 1;
                          } else if (img == 1) {
                            img = 2;
                          } else if (img == 2) {
                            img = 3;
                          } else if (img == 3) {
                            img = 4;
                          } else {
                            img = 0;
                          }
                        });
                      },
                      child: Icon(Icons.skip_next)),
                ],
              ))
        ],
      ),
    );
  }
}
