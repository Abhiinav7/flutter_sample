import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<String> contacts = [
    "Tanjiro",
    "Giyuu",
    "shinobu",
    "Nezuko",
    "insoku",
    "muichiro",
    "zenitsu",
    "misuri",
    "rengoku"
  ];
  Map  Icon_pic={
    "contactPic":[ "assets/demonslayer/tanjiroo.jpg",
      "assets/hashira/giyuu.jpg",
      "assets/hashira/shinobu.jpg",
      "assets/demonslayer/nezuko.jpg",
      "assets/demonslayer/insoku.jpg",
      "assets/demonslayer/muichiro.jpg",
      "assets/demonslayer/zenitsu.jpg",
      "assets/hashira/misuri.jpg",
      "assets/hashira/rengoku.jpg",],
    "iconss":[
      Icon(Icons.call),
      Icon(Icons.camera_alt_outlined),
      Icon(Icons.video_call_rounded),
      Icon(Icons.call_made_outlined),
      Icon(Icons.add_a_photo),
      Icon(Icons.video_camera_back),
      Icon(Icons.access_time),
      Icon(Icons.accessibility_new),
      Icon(Icons.add_alert_sharp)
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Contacts"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  title: Text("${contacts[index]}"),
                  trailing: Icon_pic["iconss"][index],
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("Close"))
                              ],
                              title: Text("Edit contact"),
                              contentPadding: EdgeInsets.all(20),
                              content: Text("Enter details"),
                            ));
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(Icon_pic["contactPic"][index]),
                  )),
            );
          },
        ),
      ),
    );
  }
}
