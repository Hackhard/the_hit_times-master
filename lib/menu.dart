import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 3),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(3, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 1),
];

List<Widget> _tiles = const <Widget>[
  const _SMenuTile(Colors.black, Icons.widgets),
  const _SMenuTile(Color(0xFF757575), Icons.add),
  const _SMenuTile(Color(0xFF9E9D24), Icons.panorama_wide_angle),
  const _SMenuTile(Color(0xFFFF6F00), Icons.map),
  const _SMenuTile(Color(0xFF263238), Icons.send),
  const _SMenuTile(Colors.amber, Icons.airline_seat_flat),
  const _SMenuTile(Color(0xFFD50000), Icons.power_settings_new),
  const _SMenuTile(Color(0xFF3E2723), Icons.battery_alert),
  const _SMenuTile(Color(0xFF33691E), Icons.desktop_windows),
  const _SMenuTile(Color(0xFF004D40), Icons.child_care),
  const _SMenuTile(Color(0xFF880E4F), Icons.child_care),
  const _SMenuTile(Colors.purple, Icons.child_care),
];

class SMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
        constraints: BoxConstraints.loose(screenSize),
        width: screenSize.width,
        height: MediaQuery.of(context).size.height/2,
        child: new Padding(
            padding: const EdgeInsets.only(bottom: 0.0,top: 0.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 5,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 6.0,
              crossAxisSpacing: 2.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _SMenuTile extends StatelessWidget {
  const _SMenuTile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {Navigator.of(context).push(
          new MaterialPageRoute(
              builder: (BuildContext context) => new Container(),
          )
        );},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(2.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}