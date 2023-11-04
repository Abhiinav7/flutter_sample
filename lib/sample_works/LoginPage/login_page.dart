import 'package:flutter/material.dart';

import '../feedPage.dart';

class LoginPage extends StatefulWidget {
  var mail;
  var pass;

  LoginPage({super.key, required this.mail, required this.pass});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final n = "";

  TextEditingController mail1 = TextEditingController();
  TextEditingController pas1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("OpenSpace"),
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
                  controller: mail1,
                  maxLength: 100,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.pinkAccent,
                      hintText: "enter email",
                      suffixText: "@gmail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)))),
              TextField(
                  controller: pas1,
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
                    final email=mail1.text;
                    final pass=pas1.text;
                    if(n==email && n==pass)  {
                      final snakbar = SnackBar(
                          backgroundColor: Colors.pinkAccent,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(milliseconds: 2000),
                          action: SnackBarAction(
                              label: "try again", onPressed: () {}),
                          content: Text("email & password is empty"));
                      ScaffoldMessenger.of(context).showSnackBar(snakbar);
                    }

                    else if (widget.mail == email && widget.pass == pass) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FeedPage(),
                          ));
                    }
                     else if (widget.mail != email && widget.pass != pass) {
                      final snakbar = SnackBar(
                          backgroundColor: Colors.pinkAccent,
                          behavior: SnackBarBehavior.floating,
                          duration: Duration(milliseconds: 2000),
                          action: SnackBarAction(
                              label: "try again", onPressed: () {}),
                          content: Text("incorrect email or password"));
                      ScaffoldMessenger.of(context).showSnackBar(snakbar);
                    }
                     else{
                       print("tata");
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
