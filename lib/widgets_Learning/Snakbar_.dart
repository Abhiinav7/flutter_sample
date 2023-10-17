import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
            child:
                ElevatedButton(onPressed: () {
                  final snakbar=SnackBar(
                    action: SnackBarAction(label: "undo",
                        textColor: Colors.red,
                        onPressed: (){}),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    duration: Duration(milliseconds: 3000),
                    //padding: EdgeInsets.all(4),
                     // backgroundColor: Colors.yellowAccent,
                      behavior: SnackBarBehavior.floating,
                      content: Text("dont be stupid")
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snakbar);
                }, child: Text("show Snakbar"))),
      ),
    );
  }
}
