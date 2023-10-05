import 'package:flutter/material.dart';
class AccounDetails extends StatefulWidget {
  var AccDet;
   AccounDetails({super.key,required this.AccDet});

  @override
  State<AccounDetails> createState() => _AccounDetailsState();
}

class _AccounDetailsState extends State<AccounDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 350,
                color: Colors.red,
                child: Text("Username : ${widget.AccDet[0]}",
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
                child: Text("Password : ${widget.AccDet[1]}",
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
                child: Text("phone : ${widget.AccDet[2]}",
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
                child: Text("email : ${widget.AccDet[3]}",
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

            ],
          ),
        ),
      ),
    );
  }
}
