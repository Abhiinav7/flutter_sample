import 'package:flutter/material.dart';
class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              top: 20,
                left: 40,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                )
            ),
            Positioned(
                bottom: 100,
                right: 15,

                child: Icon(
                  Icons.image_search,
                  size: 100,
                )
            ),
            Positioned(
              top: 50,
                right: 60,
                child: ElevatedButton(
                  style: ButtonStyle(minimumSize: MaterialStatePropertyAll(Size(100, 100)),iconSize: MaterialStatePropertyAll(100),),
                  onPressed:(){} , child: Icon(
                  Icons.account_circle_rounded
                ),
                ))
          ],
        ),
      ),
    );
  }
}
