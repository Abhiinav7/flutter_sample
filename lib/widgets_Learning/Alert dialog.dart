import 'package:flutter/material.dart';
class AlertDialogs extends StatefulWidget {
  const AlertDialogs({super.key});

  @override
  State<AlertDialogs> createState() => _AlertDialogsState();
}

class _AlertDialogsState extends State<AlertDialogs> {

  Future<void> alert(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            scrollable: true,
            shadowColor: Colors.red,
            elevation: 12,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              backgroundColor: Colors.pinkAccent,
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child:
                    Text("cancel", style: TextStyle(color: Colors.white))),
                TextButton(
                    onPressed: () {},
                    child:
                    Text("login", style: TextStyle(color: Colors.white))),
              ],
              title: Text(
                "Account Created",
                style: TextStyle(color: Colors.white),
              ),
              content: SingleChildScrollView(
                child: ListBody(
                  children: [
                    Text("click here to login",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){alert(context);}, child: Text("Clcik me")),
      ),
    );
  }
}
