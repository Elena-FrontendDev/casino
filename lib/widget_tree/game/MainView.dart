import 'package:flutter/material.dart';
import './UserCardList.dart';
import './TopMenu.dart';
import './BottomMenu.dart';

class MainView extends StatefulWidget {
  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.blue[50],
        child: Stack(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Center(
                  child: UserCardList(),
                ),
              ),
            ),
            TopMenu(),
            BottomMenu(),
          ],
        ),
      ),
    );
  }
}
