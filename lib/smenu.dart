import 'package:flutter/material.dart';

import 'DrawerItem.dart';
import 'first_screen.dart';

class SMenu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NavigationDrawerState();
  }
}

class NavigationDrawerState extends State<SMenu> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: Container(
          child: ConstrainedBox(
                constraints: const BoxConstraints.expand(width: 150.0),
            child: Material(
              color: Color(0xFFD3CCE3),
            elevation: 10.0,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap:(){},
                    child: Container(
                      margin: EdgeInsets.all(0.0),
                      decoration: new BoxDecoration(
                        border: new Border(
                          bottom: new BorderSide(
                            width: 3.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                ConstrainedBox(
                                  constraints: BoxConstraints.expand(width: 150.0,height: 72.0),
                                  child: Icon(Icons.print),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                ConstrainedBox(
                                  constraints: BoxConstraints.expand(width: 150.0,height: 32.0),
                                  child: Center(child: Text("Events")),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                          width: 3.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 72.0),
                                child: Icon(Icons.print),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 32.0),
                                child: Center(child: Text("Carpe Canvas")),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                          width: 3.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 72.0),
                                child: Icon(Icons.print),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 32.0),
                                child: Center(child: Text("Read Issue")),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                          width: 3.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 72.0),
                                child: Icon(Icons.print),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 32.0),
                                child: Center(child: Text("Hello")),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                          width: 3.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 72.0),
                                child: Icon(Icons.print),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 32.0),
                                child: Center(child: Text("Hello")),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                          width: 3.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 72.0),
                                child: Icon(Icons.print),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 32.0),
                                child: Center(child: Text("Hello")),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(0.0),
                    decoration: new BoxDecoration(
                      border: new Border(
                        bottom: new BorderSide(
                          width: 3.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 72.0),
                                child: Icon(Icons.print),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              ConstrainedBox(
                                constraints: BoxConstraints.expand(width: 150.0,height: 32.0),
                                child: Center(child: Text("Hello")),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Center(
            child: Text("MEnu"),
      )
    );
  }
}