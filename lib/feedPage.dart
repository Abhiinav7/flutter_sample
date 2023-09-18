import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.red, fontWeight: FontWeight.w700, fontSize: 35),
        backgroundColor: Colors.white54,
        title: Text("Instagram"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Fazil"),
                    subtitle: Text("updted 12 min ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/fazil.png"),
                    ),
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("cutipiee nezukoo chaan"),
                  ),
                  Image.asset("assets/demonslayer/nezuko.jpg"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.thumb_down)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                  ListTile(
                    title: Text("Bahiz"),
                    subtitle: Text("updted 45 min ago"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/bahiz.png"),
                    ),
                    trailing: Icon(Icons.more_vert),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("Demon leader Muzan"),
                  ),
                  Image.asset("assets/uppermoon/muzan.png"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.thumb_down)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
