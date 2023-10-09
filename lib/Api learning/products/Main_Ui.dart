import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

class MyHttpSample extends StatefulWidget {
  const MyHttpSample({super.key});

  @override
  State<MyHttpSample> createState() => _MyHttpSampleState();
}

class _MyHttpSampleState extends State<MyHttpSample> {
  bool downloading = false;
  bool gotData = false;
  var data;
  bool iphone = false;
  bool samsung = false;
  bool oppo = false;
  bool huawai = false;

  bool iphone1 = false;
  bool samsung1 = false;
  bool oppo1 = false;
  bool huawai1= false;

Widget Iphone() {
  if (iphone1 == true) {
    return Container(
      height: 300,
      width: 250,
    child: Image.asset("assets/images/iphonex.jpg",fit: BoxFit.fill,),
    );
  }
  else{return SizedBox();}
}
  Widget Samsung() {
    if (samsung1 == true) {
      return Container(
        height: 300,
        width: 250,
        child: Image.asset("assets/images/samsung.jpg",fit: BoxFit.fill,),
      );
    }
    else{return SizedBox();}
  }
  Widget Oppo() {
    if (oppo1 == true) {
      return Container(
        height: 300,
        width: 180,
        child: Image.asset("assets/images/oppo.jpg",fit: BoxFit.fill,),
      );
    }
    else{return SizedBox();}
  }
  Widget Huwai() {
    if (huawai1 == true) {
      return Container(
        height: 300,
        width: 350,
        child: Image.asset("assets/images/huwai.jpg",fit: BoxFit.fill,),
      );
    }
    else{return SizedBox();}
  }

  Future downloadIphone() async {
    var response;
    try {
      var url = Uri.parse('https://dummyjson.com/products/2');
      response = await http.get(url);
    } catch (e) {
      print("error=$e");
      return false;
    }
    print("status Code=${response.statusCode}");
    print("data=${response.body}");

    data = jsonDecode(response.body);
    print("decoded data=$data}");
    print("title=${data["title"]}");
    setState(() {});
    return true;
  }

  Future downloadSamsung() async {
    var response;
    try {
      var url = Uri.parse('https://dummyjson.com/products/3');
      response = await http.get(url);
    } catch (e) {
      print("error=$e");
      return false;
    }
    print("status Code=${response.statusCode}");
    print("data=${response.body}");

    data = jsonDecode(response.body);
    print("decoded data=$data}");
    print("title=${data["title"]}");
    setState(() {});
    return true;
  }

  Future downloadOppo() async {
    var response;
    try {
      var url = Uri.parse('https://dummyjson.com/products/4');
      response = await http.get(url);
    } catch (e) {
      print("error=$e");
      return false;
    }
    print("status Code=${response.statusCode}");
    print("data=${response.body}");

    data = jsonDecode(response.body);
    print("decoded data=$data}");
    print("title=${data["title"]}");
    setState(() {});
    return true;
  }

  Future downloadHuawai() async {
    var response;
    try {
      var url = Uri.parse('https://dummyjson.com/products/5');
      response = await http.get(url);
    } catch (e) {
      print("error=$e");
      return false;
    }
    print("status Code=${response.statusCode}");
    print("data=${response.body}");

    data = jsonDecode(response.body);
    print("decoded data=$data}");
    print("title=${data["title"]}");
    setState(() {});
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "ProductHub",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 6, 8, 0),
              child: Card(
                color: Colors.blue,
                child: ListTile(
                  onTap: () {
                    setState(() {
                      iphone = true;
                      iphone1=true;
                    });
                  },
                  onLongPress: () {
                   setState(() {

                   });
                  },
                  leading: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/images/apple.jpg")),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("An apple product"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  title: Text("Iphone X"),
                  titleTextStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  textColor: Colors.white,
                  subtitleTextStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
              child: Card(
                color: Colors.blue,
                child: ListTile(
                  onTap: () {
                    setState(() {
                      samsung = true;
                      samsung1 = true;
                    });
                  },
                  onLongPress: () {
                    setState(() {

                    });
                  },
                  leading: Container(
                    height: 75,
                    width: 70,
                    child: Image.asset(
                      "assets/images/samsung.png",
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(" A samsung device"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  title: Text("Samsung Universe 9"),
                  titleTextStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  textColor: Colors.white,
                  subtitleTextStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 2),
              child: Card(
                color: Colors.blue,
                child: ListTile(
                  onTap: () {
                    setState(() {
                      oppo = true;
                      oppo1=true;
                    });
                  },
                  onLongPress: () {
                    setState(() {

                    });
                  },
                  leading: Container(
                    height: 75,
                    width: 70,
                    child: Image.asset("assets/images/oppo.png"),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text("worldwide top brand"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  title: Text("OPPO F19"),
                  titleTextStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  textColor: Colors.white,
                  subtitleTextStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 2),
              child: Card(
                color: Colors.blue,
                child: ListTile(
                  onTap: () {
                    setState(() {
                      huawai = true;
                      huawai1=true;
                    });
                  },
                  onLongPress: () {
                    setState(() {

                    });
                  },
                  leading: Container(
                    height: 75,
                    width: 70,
                    child: Image.asset("assets/images/huwai.png"),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(" budget phone"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  title: Text("Huawai p90"),
                  titleTextStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  textColor: Colors.white,
                  subtitleTextStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 50,),


           Iphone(),
            Oppo(),
            Huwai(),
            Samsung(),

            downloading
                ? Container(
                    height: 200,
                    width: 300,
                    //color: Colors.grey,
                    child: gotData
                        ? Column(
                            children: [
                              Text("Specifications",style: TextStyle(fontSize: 40,color: Colors.red,fontWeight: FontWeight.bold)),
                              SizedBox(height: 5,),
                              Text(
                                " ${data['title']}",
                                style: TextStyle(fontSize: 23,color: Colors.teal),
                              ),
                              Text(
                                "id = ${data['id']}",
                                style: TextStyle(fontSize: 23,color: Colors.teal),
                              ),
                              Text(
                                "Category = ${data['category']}",
                                style: TextStyle(fontSize: 23,color: Colors.teal),
                              ),
                              Text(
                                "Price = ${data['price']}",
                                style: TextStyle(fontSize: 23,color: Colors.teal),
                              ),
                              Text(
                                "Brand = ${data['brand']}",
                                style: TextStyle(fontSize: 20,color: Colors.teal),
                              ),
                            ],
                          )
                        : Center(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: CircularProgressIndicator(),
                            ),
                          ),
                  )
                : Container(
                    height: 200,
                    width: 300,
                    // color: Colors.grey,
                    //child: Text("tap"),
                  ),


            Visibility(
                visible: iphone,
                child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        downloading = true;
                      });

                      gotData = await downloadIphone();
                    },
                    child: Text("Product Details"))),

            Visibility(
                visible: samsung,
                child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        downloading = true;
                      });

                      gotData = await downloadSamsung();
                    },
                    child: Text("Product Details"))),

            Visibility(
                visible: huawai,
                child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        downloading = true;
                      });

                      gotData = await downloadHuawai();
                    },
                    child: Text("Product Details"))),

            Visibility(
                visible: oppo,
                child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        downloading = true;
                      });

                      gotData = await downloadOppo();
                    },
                    child: Text("Product Details"))),
          ]),
        ],
      ),
    );
  }
}
