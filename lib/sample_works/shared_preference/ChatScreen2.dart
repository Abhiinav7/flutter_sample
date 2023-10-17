import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonChatScreen extends StatefulWidget {
  const PersonChatScreen({super.key});

  @override
  State<PersonChatScreen> createState() => _PersonChatScreenState();
}

class _PersonChatScreenState extends State<PersonChatScreen> {
  TextEditingController msg = TextEditingController();
  String? myString;
  bool a = false;
  bool b = false;

  Future<bool> saveM(String msg) async {
    try {
      SharedPreferences msges = await SharedPreferences.getInstance();
      await msges.setString("Mesages", msg);
      return true;
    } catch (r) {
      print("error=$r");
      return false;
    }
  }

  Future<String?> getM() async {
    SharedPreferences msg = await SharedPreferences.getInstance();
    String? msges = await msg.getString("Mesages");
    return msges;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Shobin"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.videocam_rounded,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call,
                size: 30,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 30,
              ))
        ],
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("assets/images/shobin.jpg"),
        ),
      ),
      body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 300,
                    ),
                    Container(
                      height: 40,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "    Da",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 250,
                    ),
                    Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        " Nale varoo",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(children: [
                  SizedBox(
                    width: 00,
                  ),
                  Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "  llada",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 280,
                    ),
                    b
                        ? Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "  $myString",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w400),
                            ),
                          )
                        : SizedBox()
                  ],
                ),
                SizedBox(
                  height: 459,
                ),
                Row(
                  children: [
                    Container(
                      width: 325,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.tag_faces,
                                color: Colors.grey.shade700,
                                size: 35,
                              )),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.name,
                              controller: msg,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Message"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    FloatingActionButton(
                        onPressed: () async {
                          a = await saveM(msg.text);
                          myString = await getM();
                          setState(() {
                            b = true;
                            msg.clear();
                          });
                        },
                        child: a
                            ? Icon(
                                Icons.send,
                                size: 25,
                              )
                            : Icon(
                                Icons.mic,
                                size: 25,
                              ))
                  ],
                )
              ],
            ),
          ]),
    );
  }
}
