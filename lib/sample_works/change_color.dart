import 'package:flutter/material.dart';

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  void ICN() {
    if (iconClr == Colors.black) {
      iconClr = Colors.blueAccent;
    } else {
      iconClr = Colors.black;
    }
  }

  Widget ICN1() {
    if (iconClr1 == Colors.black) {
      iconClr1 = Colors.blueAccent;
    } else {
      iconClr1 = Colors.black;
    }
    return Container();
  }

  Widget txtF(){
    if(clk==0){
      return Text("HY",style: TextStyle(fontSize: 50),);
    }
    else
      {
        return Text("HALLO",style: TextStyle(fontSize: 50));
      }
  }

  var iconClr = Colors.black;
  var iconClr1 = Colors.black;

  var textDisplay = "LYF SUCKS";
  var textClr = Colors.black;

  int clk=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color change"),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.red),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textDisplay,
              style: TextStyle(fontSize: 40, color: textClr),
            ),
            SizedBox(
              height: 34,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (textClr == Colors.black) {
                      textClr = Colors.red;
                    } else if (textClr == Colors.red) {
                      textClr = Colors.blueAccent;
                    } else {
                      textClr = Colors.black;
                    }
                  });
                },
                child: Text(
                  "change color",
                  style: TextStyle(fontSize: 30),
                )),
            txtF(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        ICN();
                      });
                    },
                    icon: Icon(
                      Icons.thumb_up,
                      color: iconClr,
                      size: 50,
                    )),
                SizedBox(
                  width: 36,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        ICN1();
                      });
                    },
                    icon: Icon(
                      Icons.thumb_down,
                      color: iconClr1,
                      size: 50,
                    )),



              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              if(clk==0){
                clk=1;
              }
              else{
                clk=0;
              }
            });
          },
        child: Icon(Icons.change_circle_rounded),
              
      ),
    );
  }
}
