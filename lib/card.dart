import 'package:flutter/material.dart';

class CardTest extends StatefulWidget {
  const CardTest({super.key});

  @override
  State<CardTest> createState() => _CardTestState();
}

class _CardTestState extends State<CardTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        title: Text("Files"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 40,fontWeight: FontWeight.w600),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shadowColor: Colors.blue,
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21)),
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Iron man"),
                    subtitle: Text("Marvel"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("spider man"),
                    subtitle: Text("Marvel"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Batman"),
                    subtitle: Text("Dc"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Leo"),
                    subtitle: Text("Lcu"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("demon slayer "),
                    subtitle: Text("manga"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Iron man"),
                    subtitle: Text("Marvel"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Iron man"),
                    subtitle: Text("Marvel"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Iron man"),
                    subtitle: Text("Marvel"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              color: Colors.blueGrey,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Iron man"),
                    subtitle: Text("Marvel"),
                    textColor: Colors.white,
                    leading: Icon(Icons.movie),
                    iconColor: Colors.white,
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
