import 'package:flutter/material.dart';
class RadioButton extends StatefulWidget {
  const RadioButton({super.key});

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int radiobutton=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green ,
      ),
      body: Column(
        children: [
          Text("Gender",
          style: TextStyle(
            fontSize: 30,
            color: Colors.pink,
            fontWeight: FontWeight.w700
          ),),
          Row(
            children: [
              Text("male",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.green,
                  fontSize: 20
                ),
              ),
              Radio(
                  value: 1,
                  groupValue: radiobutton,
                  onChanged: (v){
                    setState(() {
                      radiobutton=v!;
                    });
                  }
              ),
              Text("Female",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.green,
                    fontSize: 20
                ),
              ),
              Radio(
                  value: 2,
                  groupValue: radiobutton,
                  onChanged: (v){
                    setState(() {
                      radiobutton=v!;
                    });
                  }),
              Text("others",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.green,
                    fontSize: 20
                ),
              ),
              Radio(
                fillColor: MaterialStatePropertyAll(Colors.purpleAccent),
                  value: 3,
                  groupValue: radiobutton,
                  onChanged: (v){
                    setState(() {
                      radiobutton=v!;
                    });
                  })
            ],
          ),

        ],
      ),
    );
  }
}
