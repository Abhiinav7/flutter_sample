import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'feedPage.dart';


class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  List loginInfo = [];
  bool login1 = false;
  List l = [];

  TextEditingController uname = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future saveLogin(String n, String p) async {
    SharedPreferences data = await SharedPreferences.getInstance();
    await data.setString("Username1", n);
    await data.setString("Password1", p);
    return true;
  }

  Future getData() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    String? uname = data.getString('Username1');
    String? pass = data.getString('Password1');
    loginInfo = [uname, pass];
    return loginInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        title: Text("LoginPage"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Instagram",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.pink,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    shadows: [
                      Shadow(
                          color: Colors.pink,
                          blurRadius: 5,
                          offset: Offset(2, 3))
                    ])),
            SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.name,
              maxLength: 100,
              controller: uname,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                hintText: "phone number,email or username",
              ),
            ),
            TextField(
              keyboardType: TextInputType.name,
              //obscureText: true,
              maxLength: 10,
              controller: pass,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  labelText: "Password"),
            ),
            Container(
              height: 59,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  saveLogin(uname.text, pass.text);
                  setState(() {
                    uname.text = " ";
                    pass.text = " ";
                    login1 = true;
                  });
                },
                child: Text(
                  login1 ? "saved" : "save",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                FloatingActionButton(
                  onPressed: () async {
                    await getData();
                    setState(() {
                      uname.text = loginInfo[0];
                      pass.text = loginInfo[1];
                    });
                  },
                  child: Text("get"),
                ),
                SizedBox(
                  width: 90,
                ),
                FloatingActionButton(
                  onPressed: () async {
                    l=await getData();
                    setState(() {
                      print(l[0]);
                      print(l[1]);
                    });
                  },
                  child: Text("print"),
                ),
                SizedBox(
                  width: 60,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FeedPage()));
                    },
                    child: Text("Next"))
              ],
            ),


          ],
        ),
      ),
    );
  }
}
