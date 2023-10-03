import 'package:flutter/material.dart';

class RaBut extends StatefulWidget {
  const RaBut({super.key});

  @override
  State<RaBut> createState() => _RaButState();
}

class _RaButState extends State<RaBut> {
  String? gender;
  String? sts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              color: Colors.orangeAccent,
              child: Column(
                children: [
                  Text(
                    "Select your gender",
                    style: TextStyle(fontSize: 20),
                  ),
                  ListTile(
                    title: Text("male"),
                    leading: Radio(
                        value: "male",
                        groupValue: gender,
                        onChanged: (String? v) {
                          setState(() {
                            gender = v;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("female"),
                    leading: Radio(
                      value: "female",
                      groupValue: gender,
                      onChanged: (String? v) {
                        setState(() {
                          gender = v;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("other"),
                    leading: Radio(
                      value: "other",
                      groupValue: gender,
                      onChanged: (String? v) {
                        setState(() {
                          gender = v;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text("Marital status",style: TextStyle(
                    fontSize: 25
                  ),),
                  RadioListTile(
                      title: Text("married"),
                      value: "unmarried",
                      groupValue: sts,
                      onChanged: (String? v){
                        setState(() {
                          sts=v;
                        });
                      }),
                  RadioListTile(
                    title: Text("unmarried"),
                      value: "married",
                      groupValue: sts,
                      onChanged: (String? v){
                        setState(() {
                          sts=v;
                        });
                      }),
                  Text("$sts",style: TextStyle(fontSize: 20),)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
