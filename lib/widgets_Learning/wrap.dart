import 'package:flutter/material.dart';
class WrapWidgets extends StatefulWidget {
  const WrapWidgets({super.key});

  @override
  State<WrapWidgets> createState() => _WrapWidgetsState();
}

class _WrapWidgetsState extends State<WrapWidgets> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.yellowAccent,
        child: Wrap(
          direction: Axis.vertical,//to change wrap direction into horizontal or vertical
          alignment: WrapAlignment.center, //set allignemt
          children: [
            Container(height: 80,width: 80,color: Colors.red,),
            Container(height: 80,width: 80,color: Colors.blueGrey,),
            Container(height: 80,width: 80,color: Colors.orange,),
            Container(height: 80,width: 80,color: Colors.purpleAccent,),
            Container(height: 80,width: 80,color: Colors.black45,),

          ],
        ),
      ),
    );
  }
}
