import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Login1 extends StatefulWidget {
  const Login1({super.key});

  @override
  State<Login1> createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  Future <bool> saveData (String name)async{
    try{
      SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
      await sharedPreferences.setString('Name', name);
      return true;
    }
    catch(e){
      print("SavedData Error =$e");
      return false;
    }

  }
  Future <String?> getData() async{
    try{
      SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
      String? data = sharedPreferences.getString('Name');
      return data;
    }
    catch(e){
      print("getData Error =$e");
      return " ";
    }

  }
  bool a= false;
  String? b='' ;
  TextEditingController emailController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
          child:Column(
            children: [
              SizedBox(height: 30,),
              TextField(
                controller: emailController ,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Email"
                ),

              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: ()async{
                    a = await saveData(emailController.text);
                    setState(() {
                      emailController.clear();
                    });
                  },
                  child: Text(a? "Saved":"Save")
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: ()async{
                    b = await getData();
                    setState(() {
                      emailController.text=b!;
                    });
                  },
                  child: Text('Getdata')),
            ],
          )
      ),
    );
  }
}