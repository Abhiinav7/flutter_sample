import 'package:flutter/material.dart';
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int num=0;
  int iconn=0;
  Widget WWW(){
    if(iconn==0){
      return Icon(Icons.remove_red_eye,
        size: 40,
        color: Colors.indigo,
      );
    }
    else if(iconn==1)
    {
      return Icon(Icons.add_a_photo_outlined,
          size: 40,
          color: Colors.indigoAccent
      );
    }
    else{
      return Icon(Icons.accessibility,
          size: 40,
          color: Colors.indigoAccent
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white38, fontWeight: FontWeight.w700, fontSize: 35),
        backgroundColor: Color(0xff008000),
        title: Text("CounterApp"),
      ),
      body: Stack(
        children: [
Positioned(
  left: 100,
    top: 400,
    child: Text("you clicked:$num",
    style: TextStyle(
      fontSize: 30,
      color: Colors.red,
      fontWeight: FontWeight.w700
    ),),
      ),
    Positioned(
        left: 190,
        top: 450,
        child: WWW()

),

Positioned(
  right: 10,
    bottom: 30,
    child: FloatingActionButton(
      onPressed: (){
        setState(() {
          num++;
          if(iconn==0){iconn=1;}
          else if(iconn==1){iconn=2;}
          else{iconn=0;}

        });
      },
child: Icon(Icons.add),
    )

            ),
        ],
      ),
    );
  }
}
