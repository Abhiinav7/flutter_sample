import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        title: Text("LoginPage"),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 40
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children: [
              TextField(

                textAlign: TextAlign.center,
                maxLength: 5,
                obscureText: false,
              keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true ,
              // fillColor: Colors.lightGreenAccent,
               enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: Colors.lightGreenAccent,
                      width: 8,
                      style: BorderStyle.solid
                    )
                  ),
                    labelText: "Enter username", hintText: "username ",
                  prefixIcon: Icon(Icons.account_box_rounded),
                  suffixIcon: Icon(Icons.account_box),
                  prefixText: "mr.",
                  suffixText: "mbbs",
                  helperText: "orgninal name",
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.red
                  ),
                  hintStyle: TextStyle(
                    color: Colors.greenAccent
                  ),
                  helperStyle:TextStyle(
                    fontSize: 12
                  )
                ),

              ),
              TextField(

                // decoration: InputDecoration(
                //   border: UnderlineInputBorder(
                //     borderRadius: BorderRadius.circular(30)
                //   )
                // ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
