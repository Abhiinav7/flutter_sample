import 'package:flutter/material.dart';
class ShowPage extends StatefulWidget {

  var logInfo;
   ShowPage({super.key,required this.logInfo});





  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 350,
              color: Colors.red,
              child: Text("Username : ${widget.logInfo[0]}",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w600
                ),


              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 50,
              width: 350,
              color: Colors.red,
              child: Text("Password:${widget.logInfo[1]}",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
              )
              ),
            ),
            SizedBox(
              height: 250,
            ),
            ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.pop(context);
                });

              }, child: Icon(Icons.close)),


          ],
        ),
      ),
    );
  }
}
