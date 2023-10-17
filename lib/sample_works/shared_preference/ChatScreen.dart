import 'package:flutter/material.dart';

import 'ChatScreen2.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("ChatScreen"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Column(
          children: [
           ListTile(

             shape: RoundedRectangleBorder(side: BorderSide(width: 4,color: Colors.white),borderRadius: BorderRadius.circular(12)),
             tileColor: Colors.blue,
             title: Text("Shobin"),
             titleTextStyle: TextStyle(fontSize: 29,fontWeight: FontWeight.w700),
             leading: CircleAvatar(
               radius: 25,
               backgroundImage: AssetImage("assets/person/person.jpg"),
             ),
             onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => PersonChatScreen()));
             },
           ),
            ListTile(
              shape: RoundedRectangleBorder(side: BorderSide(width: 4,color: Colors.white),borderRadius: BorderRadius.circular(12)),
              tileColor: Colors.blue,
              title: Text("Anu"),
              titleTextStyle: TextStyle(fontSize: 29,fontWeight: FontWeight.w700),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/person/person.jpg"),
              ),
              onTap: () {},
            ),
            ListTile(
              shape: RoundedRectangleBorder(side: BorderSide(width: 4,color: Colors.white),borderRadius: BorderRadius.circular(12)),
              tileColor: Colors.blue,
              title: Text("Arjun"),
              titleTextStyle: TextStyle(fontSize: 29,fontWeight: FontWeight.w700),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/person/person.jpg"),
              ),
              onTap: () {},
            ),
            ListTile(
              shape: RoundedRectangleBorder(side: BorderSide(width: 4,color: Colors.white),borderRadius: BorderRadius.circular(12)),
              tileColor: Colors.blue,
              title: Text("John"),
              titleTextStyle: TextStyle(fontSize: 29,fontWeight: FontWeight.w700),
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/person/person.jpg"),
              ),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
