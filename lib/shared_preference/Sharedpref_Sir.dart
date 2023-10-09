import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferr extends StatefulWidget {
  const SharedPreferr({Key? key}) : super(key: key);

  @override
  State<SharedPreferr> createState() => _SharedPreferrState();
}

class _SharedPreferrState extends State<SharedPreferr> {

  Future saveData(String name)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("Name", name);
    return true;
  }

  Future getData()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? name = sharedPreferences.getString('Name');
    return name;
  }

  bool gotData = false;
  bool dataSaved = false;
  String savedName = 'Data not available';
  bool checked = true;

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared pref'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
                width: 300,
                height: 100,
                color: Colors.yellow,
                margin: EdgeInsets.only(bottom: 30),
                child: Center(
                  child: Text('Name = $savedName'),
                )
            ),
          ),

          ElevatedButton(
              onPressed: (){
                saveData(textEditingController.text);
                setState(() {
                  dataSaved = true;
                });
              },
              child: Text(dataSaved ? 'Saved' : 'Save name')
          ),


          SizedBox(height: 30,),
          ElevatedButton(
              onPressed: () async {
                savedName = await getData();
                setState(() {
                  //gotData = true;
                });
              },
              child: Text('Get Data')),

          SizedBox(
            width: 300,
            height: 100,
            child: TextField(
              scrollPadding: EdgeInsets.all(2),
              controller: textEditingController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: "Your full name",
              ),
              //expands: true,
              //maxLines: 1,
              //maxLength: 25,
              maxLines: 5,
              minLines: 1,
            ),
          ),

          ElevatedButton(
              onPressed: (){

              },
              child: Text('Next page'))
        ],
      ),
    );
  }
}