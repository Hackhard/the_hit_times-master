import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:http/http.dart' as http;
import 'package:the_hit_times/card_ui.dart';

class News extends StatefulWidget {
  @override
  NewsState createState() {
    return new NewsState();
  }
}

class NewsState extends State<News> {
  final String url = "http://10.0.2.2/newapp/public/posts";
  final String imgUrl = "http://10.0.2.2/newapp/storage/app/public/cover_images/";
  List data;

  Future<String> getSWData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var resBody = json.decode(res.body);
      data = resBody;
    });
    print(data);
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
    return Column(children: <Widget>[
      Expanded(
        child: RefreshIndicator(
          onRefresh: getSWData,
          child: data == null
              ? const Center(child: const CircularProgressIndicator())
              : data.length != 0
                  ? new ListView.builder(
                      itemCount: data == null ? 0 : data.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                              builder: (BuildContext context) => new DisplayPost(
                                    pIndex: data.length - index - 1,
                                    title: data[data.length - index - 1]['title'],
                                    body: data[data.length - index - 1]['body'],
                                    imgUrl: imgUrl + data[data.length - index - 1]['c_image'],
                                  ),
                            ));
                          },
                          child: CusCard(
                            imgUrl: imgUrl + data[data.length - index - 1]['c_image'],
                                //'https://images.pexels.com/photos/1146134/pexels-photo-1146134.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=200&w=400',
                            title: data[data.length - index - 1]['title'],
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
      ),
    ]);
  }
}

class DisplayPost extends StatelessWidget {
  DisplayPost({this.pIndex, this.body, this.title,this.imgUrl});
  final int pIndex;
  final String body;
  final String title;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The HIT Times'),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: InkWell(
        onDoubleTap: () {
          Navigator.pop(context);
        },
        child: ImageScroll(
          title: title,
          body: body,
          imgUrl: imgUrl,
        ),
      ),
    );
  }
}

class ImageScroll extends StatelessWidget {
  ImageScroll({this.imgUrl, this.title, this.body});

  final String imgUrl;
  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onVerticalDragEnd: (DragEndDetails details) {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new DisplayBody(
                      body: body,
                    ),
              ));
            },
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: double.infinity,
                height: 150.0,
                color: Colors.black26,
                child: Column(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 10.0, bottom: 2.0),
                          child: Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 8.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_up,
                            size: 60.0,
                            color: Colors.white,
                          ),
                          Text(
                            'Scroll to read',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DisplayBody extends StatelessWidget {
  DisplayBody({this.body, this.date, this.author});

  final String body;
  final String date;
  final String author;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     // backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Container(
                alignment: Alignment.topLeft,
                padding: new EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'by ' + 'Author Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: "Anson"),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: new EdgeInsets.only(left: 10.0, right: 10.0),
                child: new Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '5th November,2018',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        fontFamily: "Anson"),
                  ),
                ),
              ),
            ],
          ),
          new Container(
            padding: new EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: new Card(
              child: new Padding(
                padding: const EdgeInsets.all(10.0),
                child: new Text(
                  body,
                  style: new TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
