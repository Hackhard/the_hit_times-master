import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CusCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 2.0,
      child: new Padding(
        padding: EdgeInsets.only(left: 0.0, right: 0.0),
        child: new InkWell(
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
                          image: NetworkImage(
                              'https://images.pexels.com/photos/1146134/pexels-photo-1146134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black54, BlendMode.darken)),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "DOn jon sjdak;kd",
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
                        'suman',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: "Anson"),
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
