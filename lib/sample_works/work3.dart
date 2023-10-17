import 'package:flutter/material.dart';

class StudiedWidgets extends StatefulWidget {
  const StudiedWidgets({super.key});

  @override
  State<StudiedWidgets> createState() => _StudiedWidgetsState();
}

class _StudiedWidgetsState extends State<StudiedWidgets> {
  bool chk = false;
  bool chk1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {  },
            icon: Icon(Icons.search),
          ),
          IconButton( 
            color: Colors.white,
            onPressed: () {  },
            icon: Icon(Icons.more_vert),
          )

        ],
leading:IconButton(
  color: Colors.white,
  onPressed: () { },
  icon: Icon(Icons.home),
) ,
        elevation: 10,
        shadowColor: Colors.green,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white38, fontWeight: FontWeight.w700, fontSize: 35),
        backgroundColor: Color(0xff008000),
        title: Text("ChatScreen"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurpleAccent, width: 5),
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: double.infinity,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/bahiz.png"),
                    radius: 34,
                    //NetworkImage("https://spng.pngfind.com/pngs/s/173-1737582_1000-x-972-71-4-business-man-with.png"),
                    // child: Image.network(
                    //     "https://spng.pngfind.com/pngs/s/173-1737582_1000-x-972-71-4-business-man-with.png"),
                  ),
                  Text(
                    "Bahiz",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mark_unread_chat_alt,
                      color: Colors.teal,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    color: Colors.teal,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call,
                      size: 40,
                    ),
                  ),
                  Checkbox(
                    value: chk,
                    onChanged: (bool? value) {
                      setState(() {
                        chk = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 15,
                    width: 15,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.red,),
                  )
                  // Icon(Icons.album_rounded,
                  //   color: Colors.red,
                  //   shadows: [
                  //     Shadow(
                  //       color: Colors.lightGreen,
                  //       blurRadius: 60,
                  //     )
                  //   ],)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurpleAccent, width: 5),
                  color: Colors.white70,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: double.infinity,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  const CircleAvatar(


                    backgroundImage: AssetImage("assets/images/fazil.png"),
                    radius: 32,
                    //NetworkImage("https://clipart-library.com/image_gallery2/Happy-Person-Free-Download-PNG.png"),
                    // child: Image.network(
                    //     "https://spng.pngfind.com/pngs/s/173-1737582_1000-x-972-71-4-business-man-with.png"),
                  ),
                  const Text(
                    "Fazil",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mark_unread_chat_alt,
                      color: Colors.teal,
                      size: 40,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    color: Colors.teal,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.call,
                      size: 40,
                    ),
                  ),
                  Checkbox(
                    value: chk1,
                    onChanged: (bool? value) {
                      setState(() {
                        chk1 = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 15,
                    width: 15,

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      color: Colors.teal,),
                  )
                  // Icon(Icons.album_rounded,
                  // color: Colors.teal,
                  // shadows: [
                  //   Shadow(
                  //     color: Colors.lightGreen,
                  //     blurRadius: 60,
                  //   )
                  // ],)

                ],
                
              ),
            ),



SizedBox(
  height: 400,
),

       ElevatedButton(
           style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30)))),
           foregroundColor: MaterialStatePropertyAll(Colors.white70),
           backgroundColor: MaterialStatePropertyAll(Colors.teal)),
             onPressed: (){
             showDialog(
                 context: context,
                 builder: (context) => AlertDialog(
                   actions: [
                     TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child: Text("Yes"))
                   ],
                   title: Text("Are uu sure!"),
                   contentPadding: EdgeInsets.all(20),
                   content: Text("u cheat"),
                 ));
             },
             child: Text("Delete chat",
               style: TextStyle(
                   fontSize: 31,
                 
               ),
             )),
            SizedBox(

              //height: 271,
              height: 10,
            ),
            Container(
              color: Colors.blueAccent.shade100,
              width: double.infinity,
              height: 44,
              child: Stack(
                children: [
                  Positioned(
                      top: 1,
                      left: 40,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {  },
                        icon: Icon(Icons.arrow_back_ios_outlined,
                        size:25 ,),)
                  ),
                  Positioned(
                      top: 1,
                      left: 160,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {  },
                        icon: Icon(Icons.album_rounded,
                          size:25 ,),)
                  ),
                  Positioned(
                      top: 1,
                      left: 290,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {  },
                        icon: Icon(Icons.crop_square,
                          size:25 ,),)
                  )
                ],
              ),
            ),
              ],
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white38,
        onPressed: (){
        print("Enter phone number");
      },
      child: Icon(Icons.add),),
    );
  }
}
