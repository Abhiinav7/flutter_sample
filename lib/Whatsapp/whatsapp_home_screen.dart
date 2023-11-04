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
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Color(0xff075e54),
            // backgroundColor: Color(0xff128C7E),
            backgroundColor: Colors.teal.shade700,
            title: Text(
              "WhatsApp",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
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
              // IconButton(
              //     onPressed: () {},
              //     icon: Icon(
              //       Icons.more_vert,
              //       size: 30,
              //     )),

              PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                itemBuilder: (context) {
                  return [
                    // In this case, we need 5 popupmenuItems one for each option.
                    const PopupMenuItem(child: Text('New Group')),
                    const PopupMenuItem(child: Text('New Broadcast')),
                    const PopupMenuItem(child: Text('Linked Devices')),
                    const PopupMenuItem(child: Text('Starred Messages')),
                    const PopupMenuItem(child: Text("Payments")),
                    const PopupMenuItem(child: Text('Settings')),
                  ];
                },
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Row(
                    children: [
                      Text(
                        "Chats",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 4),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Center(
                            child: Text(
                          "18",
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                ),
                Tab(
                  child: Row(
                    children: [
                      Text("Updates",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w500)),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Colors.white54, shape: BoxShape.circle),
                      )
                    ],
                  ),
                ),
                Tab(child: Text("Calls",style: TextStyle(
                    fontSize: 19, fontWeight: FontWeight.w500)),)
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
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage("assets/images/liya.jpg")),
                        title: Text(
                          "Liya",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Row(
                          children: [
                            Icon(Icons.photo),
                            SizedBox(width: 6,),
                            Text("Photo", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "2:01 PM",
                              style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                          onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("assets/images/bahiz.png")),
                        title: Text(
                          "Bahiz Flutter",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          "Evdeya mone",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "12:09 PM",
                              style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage("assets/images/aaru.jpg"),),
                        title: Text(
                          "Aaruttan",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.phone_callback
                            ),
                            SizedBox(width: 8,),
                            Text("Voice call",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "11:47 AM",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage("assets/images/frost.jpg")),
                        title: Text(
                          "Frost Pubg",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle:Row(
                          children: [
                            Image.asset("assets/images/dtick.jpg",width: 30,height: 30),
                            Icon(Icons.keyboard_voice),
                            Text("1:06",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "10:05 AM",

                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage("assets/images/fazil.png")),
                        title: Text(
                          "Fazil Flutter",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle:Row(
                          children: [
                            Icon(Icons.keyboard_voice,color: Colors.blue,),
                            Text("0:18",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "9:45 AM",
                              style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage("assets/person/person.jpg")),
                        title: Text(
                          "Aiswarya",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          "ntheda kutta",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "9:43 AM",
                              style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                          AssetImage("assets/images/anu.jpg"),),
                        title: Text(
                          "Anu",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Row(
                          children: [
                            Image.asset("assets/images/vcall.jpg",height: 30,width: 30,),

                            SizedBox(width: 3,),
                            Text("Video call",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "8:09 AM",
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage("assets/images/pubg.jpg")),
                        title: Text(
                          "Agera ",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          "kerr ",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "7:45 AM",
                              style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "46",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage("assets/person/person.jpg")),
                        title: Text(
                          "+91 9456471256",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle:Row(
                          children: [
                            Image.asset("assets/images/dtick.jpg",width: 30,height: 30),
                            Icon(Icons.keyboard_voice),
                            Text("0:25",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500))
                          ],
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "10:05 AM",

                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      ListTile(
                        onTap: (){},
                        leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                            AssetImage("assets/images/tanjiro.jpg")),
                        title: Text(
                          "Boss",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          "polayadi mone",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                        ),
                        trailing: Column(
                          children: [
                            Text(
                              "Yesterday",
                              style: TextStyle(
                                  color: Colors.green.shade700,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade700,
                                  shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),





                    ],
                  )
                ],
              ),
              ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25,left: 18),
                        child: Row(
                          children: [
                            Text("Status",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w500),),
      SizedBox(width: 240,),
                            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: 30,color: Colors.grey.shade700,))
                            ],
                        ),
                      ),

                      Row(
                        children: [
                          Image.asset("assets/images/status1.jpg",width: 100,height: 110,),
                         SizedBox(width: 1,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("My status",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
                             SizedBox(height: 3,),
                             Text("Tap to add status update",style: TextStyle(color: Colors.grey.shade600,fontSize: 18),),
                           ],
                         )
                        ],
                      ),


                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15,top: 0),
                            child: Text("Recent updates",style: TextStyle(color: Colors.grey.shade700,fontSize: 20,fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14,top: 7),
                        child: Row(
                         children: [
                           CircleAvatar(
                             radius: 35,
                             backgroundColor: Colors.green,
                             child: CircleAvatar(
                               radius: 31,
                               backgroundColor: Colors.white,
                               child: CircleAvatar(
                                 radius: 29,
                                 backgroundImage: AssetImage("assets/images/tanjiro.jpg"),
                               )
                             ),
                           ),
                           SizedBox(width: 12,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Leo Das",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
                               SizedBox(height: 2,),
                               Text("Just now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),)
                             ],
                           )
                         ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14,top: 10),
                        child: Row(
                         children: [
                           CircleAvatar(
                             radius: 35,
                             backgroundColor: Colors.green,
                             child: CircleAvatar(
                               radius: 31,
                               backgroundColor: Colors.white,
                               child: CircleAvatar(
                                 radius: 29,
                                 backgroundImage: AssetImage("assets/images/pubg.jpg"),
                               )
                             ),
                           ),
                           SizedBox(width: 12,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Magneto",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
                               SizedBox(height: 2,),
                               Text("3 minutes ago",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),)
                             ],
                           )
                         ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14,top: 10),
                        child: Row(
                         children: [
                           CircleAvatar(
                             radius: 35,
                             backgroundColor: Colors.green,
                             child: CircleAvatar(
                               radius: 31,
                               backgroundColor: Colors.white,
                               child: CircleAvatar(
                                 radius: 29,
                                 backgroundImage: AssetImage("assets/images/shobin.jpg"),
                               )
                             ),
                           ),
                           SizedBox(width: 12,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Haniya",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
                               SizedBox(height: 2,),
                               Text("12 minutes ago",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),)
                             ],
                           )
                         ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14,top: 10),
                        child: Row(
                         children: [
                           CircleAvatar(
                             radius: 35,
                             backgroundColor: Colors.green,
                             child: CircleAvatar(
                               radius: 31,
                               backgroundColor: Colors.white,
                               child: CircleAvatar(
                                 radius: 29,
                                 backgroundImage: AssetImage("assets/images/iphonex.jpg"),
                               )
                             ),
                           ),
                           SizedBox(width: 12,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Isha",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
                               SizedBox(height: 2,),
                               Text("6:25 PM",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),)
                             ],
                           )
                         ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14,top: 10),
                        child: Row(
                         children: [
                           CircleAvatar(
                             radius: 35,
                             backgroundColor: Colors.grey.withOpacity(0.9),
                             child: CircleAvatar(
                               radius: 31,
                               backgroundColor: Colors.white,
                               child: CircleAvatar(
                                 radius: 29,
                                 backgroundImage: AssetImage("assets/images/anu.jpg"),
                               )
                             ),
                           ),
                           SizedBox(width: 12,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Anu",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
                               SizedBox(height: 2,),
                               Text("4:17 PM",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),)
                             ],
                           )
                         ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14,top: 10),
                        child: Row(
                         children: [
                           CircleAvatar(
                             radius: 35,
                             backgroundColor: Colors.grey.withOpacity(0.9),
                             child: CircleAvatar(
                               radius: 31,
                               backgroundColor: Colors.white,
                               child: CircleAvatar(
                                 radius: 29,
                                 backgroundImage: AssetImage("assets/images/aaru.jpg"),
                               )
                             ),
                           ),
                           SizedBox(width: 12,),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Athul",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),),
                               SizedBox(height: 2,),
                               Text("2:46 PM",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),)
                             ],
                           )
                         ],
                        ),
                      ),




                    ],
                  )
                  
                ],
              ),
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
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                    color: Colors.red),
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
