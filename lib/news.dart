import 'package:flutter/material.dart';
import 'package:the_hit_times/card_ui.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      //itemCount: data == null ? 0 : data["articles"].length,
      padding: new EdgeInsets.all(8.0),
      itemBuilder: (BuildContext context, int index) {
        return new CusCard();
        /*Card(
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
                        "publishedAt",
                        style: new TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(5.0),
                      child: new Text(
                        "name",
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
                                  top: 8.0
                              ),
                              child: new Text("Title",
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            new Padding(
                              padding: new EdgeInsets.only(
                                  left: 4.0,
                                  right: 4.0,
                                  bottom: 4.0
                              ),
                              child: new Text(
                                "description:\nIn composition, description is a rhetorical strategy using sensory details to portray a person, place, or thing. Description is used in many different types of nonfiction, including essays, biographies, memoirs, nature writing, profiles, sports writing, and travel writing.",
                                style: new TextStyle(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ),
                          ],
                        ),
                        onTap: (){},
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
                              'https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/lakes/images/lake.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        /*new Row(
                          children: <Widget>[
                            new GestureDetector(
                              child: new Padding(
                                  padding:
                                  new EdgeInsets.symmetric(
                                      vertical: 10.0,
                                      horizontal: 5.0),
                                  child: buildButtonColumn(
                                      Icons.share)),
                              onTap: () {},
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
                        ),*/
                      ],
                    )
                  ],
                )
              ],
            ), ////
          ),
        );*/
      },
    );
  }
}
