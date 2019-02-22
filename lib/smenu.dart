import 'package:flutter/material.dart';

import 'package:the_hit_times/card_ui.dart';

class SMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    /*return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
    );*/
    return ListView(
      children: <Widget>[
        fourGrid(),
        Container(
          margin: EdgeInsets.only(left:10.0,right:10.0,top: 8.0,bottom: 8.0),
          height: 210.0,
          width: double.infinity,
          color: Colors.blue,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(left: 10.0,bottom: 10.0),
              child: Text(
                "About The HIT Times",
                style:TextStyle(color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}


final bottomTitle = new Container(
  height: 40.0,
  width: double.infinity,
  margin: EdgeInsets.all(0.0),
  //color: Colors.black12,
  child:Container(
    margin: EdgeInsets.only(left: 10.0),
    child: Text('Campus Adda',
      style:TextStyle(color: Colors.white,
        fontSize: 22.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  ),
);

class fourGrid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5.0,right: 2.0,bottom: 5.0,left: 0.0),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.47,
              color: Colors.black,
              child: InkWell(
                onTap: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new ReadIssue(),
                  ));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0,right: 0.0,bottom: 5.0,left: 2.0),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.47,
              color: Colors.black,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5.0,right: 2.0,bottom: 5.0,left: 0.0),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.47,
              color: Colors.black,
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0,right: 0.0,bottom: 5.0,left: 2.0),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.47,
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}

class ReadIssue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height * (3/4),
          width: MediaQuery.of(context).size.width * (3/4),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * (3/4),
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * (3/4),
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * (3/4),
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * (3/4),
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width * (3/4),
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * (3/4),
                  height: 50.0,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(" ISSUE 6 ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900,
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
