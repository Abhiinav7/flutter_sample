import 'package:flutter/material.dart';

class NewHome extends StatelessWidget {
  const NewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        leading: const Icon(
          Icons.home,
          size: 50,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            color: Colors.purple,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 50,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: 50,
                color: Colors.white,
              ))
        ],
        elevation: 10.8,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.cyan,
        padding: const EdgeInsets.all(40),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(width: 5, color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              boxShadow: const [BoxShadow(blurRadius: 5, spreadRadius: 5)]),
          child: Container(
            margin: const EdgeInsets.all(30),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(width: 5, color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                boxShadow: const [
                  BoxShadow(color: Colors.red, blurRadius: 15, spreadRadius: 10)
                ]),
            child: Container(
              margin: const EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(
                      color: Colors.white, width: 10, style: BorderStyle.solid),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      topRight: Radius.circular(80)),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 10, spreadRadius: 10, color: Colors.blue)
                  ]),
              child: const Icon(
                Icons.add_home_work_outlined,
                size: 90,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.home_sharp,
          size: 50,
        ),
        onPressed: () {},
        tooltip: "home",
      ),
    );
  }
}
