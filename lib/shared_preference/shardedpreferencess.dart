import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends StatefulWidget {
  const SharedPref({super.key});

  @override
  State<SharedPref> createState() => _SharedPrefState();
}

class _SharedPrefState extends State<SharedPref> {
  Future saveData(String datas) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("Name", datas);
    return true;
  }

  Future getData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? myString = sharedPreferences.getString("Name");
    return myString;
  }

  TextEditingController textEditingController = TextEditingController();
  bool dataSaved = false;
  String savedData = "no data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared preference"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Text(
                "Entered data:$savedData",
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            TextField(
              keyboardType: TextInputType.text,
              controller: textEditingController,
              //expands: true,
              decoration: const InputDecoration(hintText: "enter data"),
            ),
            ElevatedButton(
              onPressed: () {
                saveData(textEditingController.text);
                setState(() {
                  dataSaved = true;
                });
              },
              child: Text(dataSaved ? "saved" : "save"),
            ),
            ElevatedButton(
                onPressed: () async {
                  savedData = await getData();
                  setState(() {

                  });
                },
                child: const Text("Get data"))
          ],
        ),
      )),
    );
  }
}
