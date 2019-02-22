import 'package:flutter/material.dart';

//import 'package:the_hit_times/card_ui.dart';

class SMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        fourGrid(),
        Container(
          margin: EdgeInsets.only(left:10.0,right:10.0,top: 8.0,bottom: 8.0),
          height: 300.0,
          width: double.infinity,

          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('assets/images/about_us.jpeg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black26,
                      BlendMode.darken,
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: bottomTitle(
                      caption : 'About Us'
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class bottomTitle extends StatelessWidget {
  bottomTitle({this.caption});
  final String caption;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      margin: EdgeInsets.all(0.0),
      //color: Colors.black12,
      child:Container(
        margin: EdgeInsets.only(left: 10.0),
        child: Text( caption,
          style:TextStyle(color: Colors.white,
            fontSize: 22.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

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

              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/campus_news.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black26,
                            BlendMode.darken
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: bottomTitle(
                          caption : 'Campus News'
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0,right: 0.0,bottom: 5.0,left: 2.0),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.47,

              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/read_issue.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black26,
                            BlendMode.darken
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: bottomTitle(
                          caption : 'App Exclusive'
                      )
                  ),
                ],
              ),
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

              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/weeklies.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black26,
                            BlendMode.darken
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: bottomTitle(
                          caption : 'Weeklies'
                      )
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 5.0,right: 0.0,bottom: 5.0,left: 2.0),
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.47,

              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/images/read_issue.jpeg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black26,
                            BlendMode.darken
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: bottomTitle(
                      caption : 'Read Issue'
                    )
                  ),
                ],
              ),
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
