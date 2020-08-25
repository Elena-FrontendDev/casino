import 'package:flutter/material.dart';
import './GuestLogin.dart';

//TODO: верхний appBar - нужно заново задавать в виджете?
//передать title? через виджеты или где-то должен хранится отдельно

class JoinGame extends StatelessWidget {
  final String title;
  JoinGame(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                          MaterialPageRoute(builder: (context) => GuestLogin()));
                    },
                    child: Text(
                      'Войти как гость',
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
                      'Войти через личный кабинет',
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
