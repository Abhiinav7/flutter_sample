import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Shrd extends StatefulWidget {
  const Shrd({super.key});

  @override
  State<Shrd> createState() => _ShrdState();
}

class _ShrdState extends State<Shrd> {
  TextEditingController txt1=TextEditingController();
  String v='';

  Future save(String name)async{
    SharedPreferences sh1=await SharedPreferences.getInstance();
    await sh1.setString('key1', name);
  }
  Future get()async{
    SharedPreferences sh1=await SharedPreferences.getInstance();
    String? n = sh1.getString('key1');
    return n;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("entered data ",
              style: TextStyle(
                fontSize: 30
              ),

            ),
            Text('$v'),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 100,
              child: TextField(

                keyboardType: TextInputType.text,
                controller:txt1 ,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 30),
                  hintText: "enter"
                ),
              ),
            ),
            ElevatedButton(

                onPressed: (){
                  save(txt1.text);
                  setState(() {
                    txt1.text='!!!';

                  });
                }, child: Text("save data")
            ),
            ElevatedButton(onPressed: ()async{
              v= await get();
              setState(() {

              });

            }, child:Text("view data")
            )
          ],
        ),
      ),

    );
  }
}
