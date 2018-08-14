import 'package:flutter/material.dart';

class CusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 2.0,
      child: new Padding(
        padding: EdgeInsets.only(left: 0.0,right: 0.0),
        child: new Column(
          children: <Widget>[
            new Row(
              children: [
                new Container(
                  constraints: BoxConstraints.expand(
                    width: 336.0,
                    height: 160.0,
                  ),
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/1146134/pexels-photo-1146134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken)
                    ),
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Description:It was a cold grey day in o\'clock in the afternoon the pallor of a winter evening seemed to have closed upon the hills, cloaking them in mist.',
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 8.0,
                    bottom: 8.0,
                    top: 8.0,
                  ),
                  child: new Container(
                    child: Text(
                      "Fragmented Media Effects in the 2016 U.S. \nTitle",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: "Anson"
                      ),
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
