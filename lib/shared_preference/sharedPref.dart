import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  bool a=false;
  String? b;

  TextEditingController name = TextEditingController();

Future <bool>  savedata(String name)async{
  try{
    SharedPreferences data = await SharedPreferences.getInstance();
    await data.setString("Name", name);
    return true;
  }catch(e){
    print("ERROR IN SAVE DATA=$e");
    return false;
  }

  }
Future <String?> getData()async{
  try{
    SharedPreferences data=await SharedPreferences.getInstance();
    String? myString=data.getString("Name");
    return myString;
  }catch(e){
    print("ERROR IN get DATA=$e");
    return " ";
  }


}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(hintText: "Enter name"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async{
                a= await savedata(name.text);
                setState(() {
                  name.clear();
                });
                },
                child: Text(a? "saved": "save")
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async{
                b= await getData();
                setState(() {
                  name.text=b!;
                });
                },
                child: Text("GetData"))
          ],
        ),
      ),
    );
  }
}
