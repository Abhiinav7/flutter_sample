import 'package:flutter/material.dart';

class WatsapHome extends StatefulWidget {
  const WatsapHome({super.key});

  @override
  State<WatsapHome> createState() => _WatsapHomeState();
}

class _WatsapHomeState extends State<WatsapHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075e54),
            title: Text("WhatsApp"),
            titleTextStyle: TextStyle(fontSize: 25),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.photo_camera_outlined,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    size: 30,
                  ))
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Icon(Icons.groups_rounded, size: 30),
                Tab(
                  text: "Chats",
                ),
                Tab(text: "Updates"),
                Tab(text: "Calls")
              ],
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: Color(0xff075e54),
          //   shape:
          //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          //   onPressed: () {},
          //   child: Icon(Icons.message),
          // ),
          body: TabBarView(
            children: [
              ListView(
                children: [Text("Work Under Construction",style: TextStyle(fontSize: 25),)],
              ),
              ListView(
                children: [Text("Work Under Construction",style: TextStyle(fontSize: 25),)],),
              ListView(
                children: [Text("Work Under Construction",style: TextStyle(fontSize: 25),)],),
              ListView(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage("assets/images/call.jpg"),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Create call link",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Share a link for your WhatsApp call",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Recent",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                                AssetImage("assets/images/nodp.png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Athul Chunguru +2",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 22),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/tick.jpg",
                                    width: 28,
                                    height: 30,
                                  ),
                                  Text(
                                    "Today, 3:45 PM",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 18),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.teal.shade400,
                                size: 35,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                                AssetImage("assets/images/nodp.png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SHIBIN CROWD",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 22),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/tick1.jpg",
                                    width: 28,
                                    height: 30,
                                  ),
                                  Text(
                                    "Today, 3:44 PM",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 18),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.teal.shade400,
                                size: 35,
                              )),

                        ],
                      ),

                      //new


                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                            AssetImage("assets/images/frost.jpg"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FROST VAZHA(2)",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 22),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/tick.jpg",
                                    width: 28,
                                    height: 30,
                                  ),
                                  Text(
                                    "Today, 1:00 PM",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 18),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 68,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.teal.shade400,
                                size: 35,
                              )),

                        ],
                      ),
//new
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                            AssetImage("assets/images/nodp.png"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Athul Chunguru +2",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 22),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/tick1.jpg",
                                    width: 28,
                                    height: 30,
                                  ),
                                  Text(
                                    "Today, 12:03 AM",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 18),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 59,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.teal.shade400,
                                size: 35,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                            AssetImage("assets/images/frost.jpg"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FROST VAZHA",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 22,color: Colors.red),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/tick2.jpg",
                                    width: 28,
                                    height: 30,
                                  ),
                                  Text(
                                    "Yesterday, 9:26 PM",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 18),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 62,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.teal.shade400,
                                size: 35,
                              )),

                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                            AssetImage("assets/images/frost.jpg"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "FROST VAZHA",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 22),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/tick1.jpg",
                                    width: 28,
                                    height: 30,
                                  ),
                                  Text(
                                    "Yesterday, 11:28 AM",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 18),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 51,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.teal.shade400,
                                size: 35,
                              )),

                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                            AssetImage("assets/images/shobin.jpg"),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shobin",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 22),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/tick1.jpg",
                                    width: 28,
                                    height: 30,
                                  ),
                                  Text(
                                    "October 2, 6:19 PM",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.5),
                                        fontSize: 18),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 62,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call,
                                color: Colors.teal.shade400,
                                size: 35,
                              )),

                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ],
          )),
    );
  }
}
