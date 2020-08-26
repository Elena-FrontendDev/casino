import 'package:flutter/material.dart';


class BottomMenu extends StatelessWidget {
  // final bool _barIsVisible;
  // BottomMenu(this._barIsVisible);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 90.0,
          color: Colors.teal[900],

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.queue_music,
                  color: Colors.white,
                  size: 26.0,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ,
                  //   ),
                  // );
                },
              ),
              CircleAvatar(
                radius: 28.0,
                child: IconButton(
                  icon: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 26.0,
                  ),
                  onPressed: () {
                   
                  },
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.voice_chat,
                  size: 26.0,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ), 
        ),
      ),
    );
  }
}
