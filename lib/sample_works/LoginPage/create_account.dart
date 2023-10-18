import 'package:flutter/material.dart';

import 'login_page.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  Future<void> alert(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              backgroundColor: Colors.pinkAccent,
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child:
                        Text("cancel", style: TextStyle(color: Colors.white))),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(
                              mail: email1,
                              pass: pass1,
                            ),
                          ));
                    },
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

  final n = "";
  String? email1;
  String? pass1;

  TextEditingController mail = TextEditingController();
  TextEditingController pas = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OpenSpace"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w700,
          color: Colors.white54,
        ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Sign up",
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
                    maxLength: 100,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.pinkAccent,
                        hintText: "enter your email",
                        suffixText: "@gmail.com",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)))),
                TextField(
                    controller: pas,
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.pinkAccent,
                        hintText: "create password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)))),
                SizedBox(
                  height: 20,
                ),
                TextField(
                    keyboardType: TextInputType.number,
                    controller: phone,
                    maxLength: 10,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android_sharp),
                        prefixText: "+91",
                        filled: true,
                        fillColor: Colors.pinkAccent,
                        hintText: "enter phone number",
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
                      email1 = mail.text;
                      pass1 = pas.text;
                      final phone1 = phone.text;

                      if (n == email1 && n == pass1 && n == phone1) {
                        final snk = SnackBar(
                          backgroundColor: Colors.pinkAccent,
                          elevation: 12,
                          duration: Duration(milliseconds: 3000),
                          behavior: SnackBarBehavior.floating,
                          content: Text("Field cannot be empty"),
                          action: SnackBarAction(
                              label: "try again", onPressed: () {}),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snk);
                      } else if (n != email1 && n != pass1 && n != phone1) {
                        alert(context);
                      }
                    },
                    child: Text("create")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
