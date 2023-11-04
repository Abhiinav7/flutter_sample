import 'package:flutter/material.dart';

class MyworkSpace extends StatefulWidget {
  const MyworkSpace({super.key});

  @override
  State<MyworkSpace> createState() => _MyworkSpaceState();
}

class _MyworkSpaceState extends State<MyworkSpace> {

  List jj=["hy","hp","Lki"];
  Future alert(context)async{
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("hy"),
          );
        },);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:

//               ElevatedButton(
//                   onPressed: () {
//                     showDialog(
//                         context: context,
//                         builder: (context) => AlertDialog(
//                             title: Text("are u sure"),
//                             content: Text("then leave bruh"),
//                             actions: [
//                               IconButton(
//                                   onPressed: () {}, icon: Icon(Icons.add))
//                             ],
//                             ));
//                   },
//                   child: Text("dialog")),
//               ElevatedButton(onPressed: () {
//              // alert(context);
// final snk=SnackBar(
//   duration: Duration(milliseconds: 3000),
//   action: SnackBarAction(label: "hy", onPressed: (){}),
//       content: Text("hyy"));
// ScaffoldMessenger.of(context).showSnackBar(snk);
//               }, child: Text("snack"))
//             ],
//           ),

          ListView.builder(
            itemCount: jj.length,
              itemBuilder: (context, index)
               {
                 final kk=jj[index];
                return Dismissible(
                  onDismissed: (direction) {
                    if(direction==DismissDirection.startToEnd){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(kk[index])));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(kk[index])));
                    }
                  },
                    background: Container(color: Colors.red,),
                    secondaryBackground: Container(color: Colors.green,),
                    key: Key(kk),
                    child: ListTile(
                      title: Text(jj[index]),
                    ));
              },)

    );
  }
}
