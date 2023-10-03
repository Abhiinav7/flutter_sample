import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Create_Account extends StatefulWidget {
  const Create_Account({super.key});

  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {

  Future <bool> saveFn(String tname,String tpass,String tphone,String tmail )async{
SharedPreferences data=await SharedPreferences.getInstance();
await data.setString("Name", tname);
await data.setString("Pass",tpass);
await data.setString("Phone", tphone);
await data.setString("Email", tmail);
return true;

  }

  TextEditingController tname=TextEditingController();
      TextEditingController tpass=TextEditingController();
  TextEditingController tphone=TextEditingController();
      TextEditingController tmail=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Create Account",
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      shadows: [
                        Shadow(
                            color: Colors.green,
                            offset: Offset(3, 4),
                            blurRadius: 12)
                      ]),
                ),
                SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: tname,
                  keyboardType: TextInputType.text,
                  maxLength: 15,
                  decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                          borderSide: BorderSide(
                              color: Colors.blueAccent,
                              width: 4,
                              style: BorderStyle.solid)),
                      label: Text("Name"),
                      hintText: "enter name"),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
controller: tpass,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 4,color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)
                    ),
                      label: Text("password"), hintText: "enter name"),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: tphone,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(

                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.blue,
                    width: 4,
                    style: BorderStyle.solid)),
                      label: Text("phone"), hintText: "enter phone number"),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: tmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blue,
                              width: 4,
                              style: BorderStyle.solid)),
                      label: Text("Email"), hintText: "enter email "),
                ),
                SizedBox(
                  height: 12,
                ),

                ElevatedButton(
                    onPressed: () {},
                    child: Text("SignUp"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
