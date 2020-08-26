import 'package:flutter/material.dart';
import './MainView.dart';

class RoleOfUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Название игры'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  width: 250.0,
                  child: FlatButton(
                    padding: EdgeInsets.all(18.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.teal.shade500,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainView()));
                    },
                    child: Text(
                      'Ведущий',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  width: 250.0,
                  child: FlatButton(
                    padding: EdgeInsets.all(18.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.teal.shade500,
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => JoinGame()));
                    },
                    child: Text(
                      'Участник',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  width: 250.0,
                  child: FlatButton(
                    padding: EdgeInsets.all(18.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.teal.shade500,
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => JoinGame()));
                    },
                    child: Text(
                      'Гость',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
