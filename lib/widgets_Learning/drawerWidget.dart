import 'package:flutter/material.dart';
class DrawerTest extends StatefulWidget {
  const DrawerTest({super.key});

  @override
  State<DrawerTest> createState() => _DrawerTestState();
}

class _DrawerTestState extends State<DrawerTest> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.pink,
child: ListView(
  children: [
    DrawerHeader(
      padding: EdgeInsets.zero,
        child: Container(
          padding: EdgeInsets.only(left: 20),
          color: Colors.blue,
child: Row(

  children: [

    CircleAvatar(

      radius: 35,
      backgroundImage: AssetImage("assets/person/person.jpg"),),
    SizedBox(width: 20,),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("name",style: TextStyle(color: Colors.white,fontSize: 20),),
        Text("arun@gmail.com",style: TextStyle(color: Colors.white,fontSize: 20))
      ],
    )
  ],
),

          
        )),
    ListTile(
      onTap: (){},
      leading: Icon(Icons.add),
      title: Text("add"),)
  ],
),
      ),
    );
  }
}
