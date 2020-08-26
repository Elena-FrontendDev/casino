import 'package:flutter/material.dart';


class UserCardList extends StatefulWidget {
  @override
  _UserCardListState createState() => _UserCardListState();
}

class _UserCardListState extends State<UserCardList> {
  bool cardIcons = false;

  @override
  @override
  Widget build(BuildContext context) {
    return _cardsList(context);
  }

  Widget _cardsList(BuildContext context) {
    final userName = [
      'James Adam',
      'Peter Pen',
      'Ilandim Retchadari',
      'Konstantin Konstantinov'
    ];

    final userRole = ['Chief', 'Gamer', 'Gamer', 'Guest'];

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: userName.length <= 2 ? 1 : 2,
        childAspectRatio: userName.length <= 2 ? 1.3 : 0.93, //???
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemCount: userName.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onLongPress: () {
            print('icons');
            //  showIcons;
          },
          child: Card(
             color: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            margin: EdgeInsets.all(10.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            userName[index],
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: Text(
                              userRole[index],
                              style: TextStyle(fontSize: 12.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow.shade700,
                        size: 14.0,
                      ),
                      Icon(
                        Icons.monetization_on,
                        color: Colors.green.shade900,
                        size: 14.0,
                      ),
                    ],
                  ),
                ),

                //Иконки на карточке юзера, которые отображаются, если кликнуть по карточке
                // UserIconsOnPress(isVisible: _isVisible),
              ],
            ),
          ),
        );
      },
    );
  }
}
