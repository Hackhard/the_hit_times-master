//import 'package:flutter/material.dart';

//FOR REFERENCE
/*class Myfeed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.grey[200],
      body: new Column(children: <Widget>[
        new Padding(
          padding: new EdgeInsets.all(0.0),
          child: new PhysicalModel(
            color: Colors.white,
            elevation: 3.0,
            child: new TextField(
              decoration: new InputDecoration(
                  hintText: 'Finding a News?', icon: new Icon(Icons.search)),
            ),
          ),
        ),
        new Expanded(
          child: data == null
              ? const Center(child: const CircularProgressIndicator())
              : data["articles"].length != 0
              ? new ListView.builder(
            itemCount: data == null ? 0 : data["articles"].length,
            padding: new EdgeInsets.all(8.0),
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                elevation: 1.7,
                child: new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: new Column(
                    children: [
                      new Row(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.only(left: 4.0),
                            child: new Text(
                              timeAgo(DateTime.parse(data["articles"]
                              [index]["publishedAt"])),
                              style: new TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          new Padding(
                            padding: new EdgeInsets.all(5.0),
                            child: new Text(
                              data["articles"][index]["source"]
                              ["name"],
                              style: new TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[700],
                              ),
                            ),
                          ),
                        ],
                      ),
                      new Row(
                        children: [
                          new Expanded(
                            child: new GestureDetector(
                              child: new Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                        left: 4.0,
                                        right: 8.0,
                                        bottom: 8.0,
                                        top: 8.0),
                                    child: new Text(
                                      data["articles"][index]
                                      ["title"],
                                      style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  new Padding(
                                    padding: new EdgeInsets.only(
                                        left: 4.0,
                                        right: 4.0,
                                        bottom: 4.0),
                                    child: new Text(
                                      data["articles"][index]
                                      ["description"],
                                      style: new TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                flutterWebviewPlugin.launch(
                                    data["articles"][index]["url"],
                                    fullScreen: false);
                              },
                            ),
                          ),
                          new Column(
                            children: <Widget>[
                              new Padding(
                                padding:
                                new EdgeInsets.only(top: 8.0),
                                child: new SizedBox(
                                  height: 100.0,
                                  width: 100.0,
                                  child: new Image.network(
                                    data["articles"][index]
                                    ["urlToImage"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              new Row(
                                children: <Widget>[
                                  new GestureDetector(
                                    child: new Padding(
                                        padding:
                                        new EdgeInsets.symmetric(
                                            vertical: 10.0,
                                            horizontal: 5.0),
                                        child: buildButtonColumn(
                                            Icons.share)),
                                    onTap: () {
                                      share(data["articles"][index]
                                      ["url"]);
                                    },
                                  ),
                                  new GestureDetector(
                                    child: new Padding(
                                        padding:
                                        new EdgeInsets.all(5.0),
                                        child: _hasArticle(
                                            data["articles"]
                                            [index])
                                            ? buildButtonColumn(
                                            Icons.bookmark)
                                            : buildButtonColumn(Icons
                                            .bookmark_border)),
                                    onTap: () {
                                      _onBookmarkTap(
                                          data["articles"][index]);
                                    },
                                  ),
                                  new GestureDetector(
                                    child: new Padding(
                                        padding:
                                        new EdgeInsets.all(5.0),
                                        child: buildButtonColumn(
                                            Icons.not_interested)),
                                    onTap: () {
                                      _onRemoveSource(
                                          data["articles"][index]
                                          ["source"]["id"],
                                          data["articles"][index]
                                          ["source"]["name"]);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ), ////
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
                  "No articles saved",
                  style: new TextStyle(
                      fontSize: 24.0, color: Colors.grey),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}*/