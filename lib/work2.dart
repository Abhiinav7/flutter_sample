import 'package:flutter/material.dart';
class Mixed extends StatefulWidget {
  const Mixed({super.key});

  @override
  State<Mixed> createState() => _MixedState();
}

class _MixedState extends State<Mixed> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
              color: Colors.deepOrange.shade100,
                shape: BoxShape.circle,
              ),
              child: IconButton(onPressed: () {  }, icon: Icon(Icons.access_time_filled_sharp),),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                 decoration: BoxDecoration(
                   color: Colors.indigo,
                   shape: BoxShape.circle
                 ),
                ),

                Container(
                  width: 100,
                  height: 100,
                  color: Colors.limeAccent,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle
                  ),
                )
              ],
            )

          ],
        ),
      ),



    );
  }
}
