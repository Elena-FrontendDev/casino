import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class TopMenu extends StatelessWidget {
  // final bool _barIsVisible;
  // final userPermition;
  // TopMenu(this._barIsVisible, this.userRole);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          color: Colors.teal.shade800,
          height: 80.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 7,
                        child: Row(
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.monetization_on,
                                color: Colors.yellow,
                                size: 18.0,
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () => {},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    // width: 160.0,
                                    child: RichText(
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                      text: TextSpan(
                                        text: 'Game first: Macau slash',
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Если гость - то кнопку Участники - скрываем
                            Visibility(
                              visible: true,
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    child: IconButton(
                                      padding: const EdgeInsets.all(4.0),
                                      icon: Icon(
                                        Icons.people_outline,
                                        size: 26.0,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>  ));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: IconButton(
                                iconSize: 20.0,
                                padding: EdgeInsets.all(0.0),
                                icon: Icon(
                                  Icons.chat,
                                  size: 26.0,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => userPermition == 'moderator' ?  : ,
                                  //   ),
                                  // );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
