import 'package:flutter/material.dart';
import 'feedPage.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
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
        titleTextStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),
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
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.zero,
                ),
                hintText: "phone number,email or username",
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              obscureText: true,
              maxLength: 10,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FeedPage()));
                },
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
