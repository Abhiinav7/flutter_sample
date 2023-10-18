import 'package:flutter/material.dart';

class DismisibleWidget extends StatefulWidget {
  const DismisibleWidget({super.key});

  @override
  State<DismisibleWidget> createState() => _DismisibleWidgetState();
}

class _DismisibleWidgetState extends State<DismisibleWidget> {
  List Contacts = ["Anu", "arjun", "raju", "kannappi", "sonu"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismisible widget"),
      ),
      body: ListView.builder(
        itemCount: Contacts.length,
        itemBuilder: (context, index) {
          final contacts = Contacts[index];
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(contacts[index]),
                    backgroundColor: Colors.red,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(contacts[index]),
                    backgroundColor: Colors.green,
                  ));
                }
              },
              key: Key(contacts),
              background: Container(
                color: Colors.red,
              ),
              secondaryBackground: Container(color: Colors.green),
              child: Card(
                child: ListTile(
                  title: Text(Contacts[index]),
                ),
              ));
        },
      ),
    );
  }
}
