import 'package:flutter/material.dart';

class TabBars extends StatefulWidget {
  const TabBars({super.key});

  @override
  State<TabBars> createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
              isScrollable: false,
              indicatorColor: Colors.blueAccent,
              //  indicatorSize: TabBarIndicatorSize.label,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 6,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blueAccent),
              tabs: [
                Tab(text: "chat"),
                Tab(text: "status"),
                Tab(text: "call")
              ]),
        ),
        body: TabBarView(children: [
          Center(
              child: Text(
            "chat page",
            style: TextStyle(fontSize: 30),
          )),
          Center(child: Text("status area", style: TextStyle(fontSize: 30))),
          Center(child: Text("call page", style: TextStyle(fontSize: 30)))
        ]),
      ),
    );
  }
}
