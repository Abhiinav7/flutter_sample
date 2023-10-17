import 'package:flutter/material.dart';

import 'feedPage.dart';

class MyWork extends StatefulWidget {
  const MyWork({super.key});

  @override
  State<MyWork> createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  bool match = false;
  final email = "anu123";
  final pass = "anumol";

  final email0 = "";
  final pass0 = "";

  TextEditingController mail = TextEditingController();
  TextEditingController pas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w700,
          color: Colors.white54,
        ),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 32,
              ),
              Text(
                "Sign in",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                          color: Colors.pink,
                          blurRadius: 12,
                          offset: Offset(3, 2))
                    ]),
              ),
              SizedBox(
                height: 80,
              ),
              TextField(
                  controller: mail,
                  maxLength: 12,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.pinkAccent,
                      hintText: "enter email",
                      suffixText: "@gmail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)))),
              TextField(
                  controller: pas,
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.pinkAccent,
                      hintText: "enter password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)))),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.pinkAccent)),
                  onPressed: () {
                    final email1 = mail.text;
                    final pass1 = pas.text;
                    if (email == email1 && pass == pass1) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FeedPage()));
                      setState(() {
                        match = true;
                      });
                    } else if (email0 == email1 && pass0 == pass1) {
                      final snakbar = SnackBar(
                          backgroundColor: Colors.pinkAccent,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(milliseconds: 2000),
                          action: SnackBarAction(
                              label: "try again", onPressed: () {}),
                          content: Text("email & password is empty"));
                      ScaffoldMessenger.of(context).showSnackBar(snakbar);
                    } else {
                      final snakbar = SnackBar(
                          backgroundColor: Colors.pinkAccent,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(milliseconds: 2000),
                          action: SnackBarAction(
                              label: "try again", onPressed: () {}),
                          content: Text("incorrect email or password"));
                      ScaffoldMessenger.of(context).showSnackBar(snakbar);
                    }
                  },
                  child: Text("login")),
              GestureDetector(
                onTap: () {
                  final snakbar = SnackBar(
                      backgroundColor: Colors.pinkAccent,
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(milliseconds: 2000),
                      action: SnackBarAction(label: "undo", onPressed: () {}),
                      content: Text("otp send to you mobile number"));
                  ScaffoldMessenger.of(context).showSnackBar(snakbar);
                },
                child: Text(
                  "Forgot email",
                  style: TextStyle(
                      color: Colors.pinkAccent.withOpacity(0.7), fontSize: 17),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
