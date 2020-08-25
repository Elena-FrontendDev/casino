import 'package:flutter/material.dart';
import './game/JoinGame.dart';

//TODO: приложение будет на всех платформах: mobile + web + desctop 
//те нужно будет адаптив делать, следовательно где будет точка разделения? 
//в самом начале или в конкретных виджетах

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Text(
                  'Введите секретный код игры',
                ),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Введите код'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: FlatButton(
                  padding: EdgeInsets.all(18.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.teal.shade500,
                  onPressed: () {
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  JoinGame(widget.title)));
                  },
                  child: Text('Присоединиться', 
                  style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
