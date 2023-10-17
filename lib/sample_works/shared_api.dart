import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedApi extends StatefulWidget {
  const SharedApi({super.key});

  @override
  State<SharedApi> createState() => _SharedApiState();
}

class _SharedApiState extends State<SharedApi> {
  Future<bool> saveFnc(String n) async{
    SharedPreferences shr=await SharedPreferences.getInstance();
    await shr.setString("Nam", n);
    return true;
  }
Future getFnc()async{
    SharedPreferences shr=await SharedPreferences.getInstance();
    String? b=shr.getString("Nam");
    return b;
}


  TextEditingController txt=TextEditingController();
bool a=false;
String? c;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
controller: txt,
              decoration: InputDecoration(border: InputBorder.none,hintText: "name"),

            ),
          ),
          ElevatedButton(onPressed: ()async{
            a=await saveFnc(txt.text);
            setState(() {
              txt.clear();
            });
          }, child: Text(a? "saved" : "saveaa")),
          ElevatedButton(onPressed: ()async{
            c=await getFnc();
            setState(() {
              txt.text=c!;
            });
          }, child: Text("get")),
          Container()
        ],
      ),

    );
  }
}
