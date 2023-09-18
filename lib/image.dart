import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/tanjiro.jpg",
                height: 150,
                width: 300,
              ),
              Image(
                image: AssetImage("assets/images/tanjiro.jpg"),
                height: 200,
                width: 200,
              ),
              Container(
                  height: 150,
                  width: 360,
                  color: Colors.blue,
                  child:
                      Image.asset("assets/images/tanjiro.jpg", fit: BoxFit.fill)),
              /*
              Image(
                image: NetworkImage(
                    "https://spng.pngfind.com/pngs/s/173-1737582_1000-x-972-71-4-business-man-with.png"),
                height: 150,
                width: 200,
              ),
              Image.network(
                "https://spng.pngfind.com/pngs/s/173-1737582_1000-x-972-71-4-business-man-with.png",
                height: 100,
                width: 300,
                fit: BoxFit.fill,
              )
                          */
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 120,
                  child: CircleAvatar(
                    radius: 100,
                   backgroundColor: Colors.red,
                    backgroundImage: AssetImage("assets/images/tanjiro.jpg"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(29.0),
                child: CircleAvatar(
                  radius: 120,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(Icons.verified_sharp,
                      size: 80,
                    ),

                  ),
                ),
              )


            ],
          ),
        ),
    ]
      ),
    );
  }
}
