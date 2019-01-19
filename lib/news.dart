import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;

class News extends StatefulWidget {
  @override
  NewsState createState() {
    return new NewsState();
  }
}

class NewsState extends State<News> {
  final String url = "https://api.myjson.com/bins/gf9lq";
  List data;

  Future<String> getSWData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var resBody = json.decode(res.body);
      data = resBody;
    });
    //print(data);
    return "Success";
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getSWData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children:<Widget>[ Expanded(
        child: data == null
            ? const Center(child: const CircularProgressIndicator())
            : data.length != 0
                ? new ListView.builder(
                    itemCount: data == null ? 0 : data.length,
                    padding: new EdgeInsets.all(8.0),
                    itemBuilder: (BuildContext context, int index) {
                      return new Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        elevation: 2.0,
                        child: new Padding(
                          padding: EdgeInsets.only(left: 0.0, right: 0.0),
                          child: new InkWell(
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    new DisplayPost(
                                      pIndex: data.length - index - 1,
                                      title: data[data.length - index - 1]
                                          ['title'],
                                      body: data[data.length - index - 1]['body'],
                                    ),
                              ));
                            },
                            child: new Column(
                              children: <Widget>[
                                new Row(
                                  children: [
                                      Container(
                                        /*constraints: BoxConstraints.expand(
                                          width: 336.0,
                                          height: 160.0,
                                        ),*/
                                        alignment: Alignment.center,
                                        decoration: new BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(8.0),
                                              topRight: Radius.circular(8.0)),
                                          image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                  'https://images.unsplash.com/photo-1526376043067-5af36c35cd6c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=aed342eea1c8593563be90e10c423dfe&auto=format&fit=crop&w=1039&q=80',
                                              ),
                                              /*image: Base64Decoder(),*/
                                              fit: BoxFit.cover,
                                              colorFilter: ColorFilter.mode(
                                                  Colors.black38,
                                                  BlendMode.darken)),
                                        ),
                                        padding: EdgeInsets.all(10.0),
                                        //Description
                                        child: Container(
                                          width: 336.0,
                                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                                          decoration: new BoxDecoration(
                                            border: new Border(
                                              left: new BorderSide(
                                                width: 3.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Text(
                                              data[data.length - index - 1]
                                                  ['description'],
                                              softWrap: true,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.left,
                                              //textDirection: TextDirection.ltr,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                                //TITLE
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0)),
                                    gradient: LinearGradient(
                                      begin: FractionalOffset.bottomRight,
                                      end: FractionalOffset.topLeft,
                                      colors: [const Color(0xFFD3CCE3), const Color(0xFFE9E4F0), const Color(0xFFFFFFFF)], // whitish to gray
                                      stops: [0.0,0.5,1.0],
                                      tileMode: TileMode.clamp, // repeats the gradient over the canvas
                                    ),
                                  ),
                                  child:Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 10.0,
                                          right: 8.0,
                                          bottom: 8.0,
                                          top: 8.0,
                                        ),
                                        child: Text(
                                            data[data.length - index - 1]['title'],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,
                                                fontFamily: "Anson"),
                                            softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                : new Center(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Icon(Icons.chrome_reader_mode,
                            color: Colors.grey, size: 60.0),
                        new Text(
                          "No articles found",
                          style:
                              new TextStyle(fontSize: 24.0, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
      ),
    ]
    );
  }
}

class DisplayPost extends StatelessWidget {
  DisplayPost({this.pIndex, this.body, this.title});
  final int pIndex;
  final String body;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The HIT Times'),
        centerTitle: true,
      ),
      body: InkWell(
        onDoubleTap: () {
          Navigator.pop(context);
        },
        child: new ListView(
          children: <Widget>[
            Card(
              child: new Container(
                constraints: BoxConstraints.expand(
                  width: 336.0,
                  height: 200.0,
                ),
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        'https://images.pexels.com/photos/1146134/pexels-photo-1146134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=400'),
                    fit: BoxFit.cover,
                  ),
                ),
                padding:
                    new EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
              ),
            ),
            new Container(
              padding: new EdgeInsets.only(left: 10.0, right: 10.0),
              child: new Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: "Anson"),
                ),
              ),
            ),
            new Container(
              padding:
                  new EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              child: new Card(
                child: new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: new Text(
                    body,
                    style: new TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
