import 'package:flutter/material.dart';
import 'package:the_hit_times/contact_us.dart';
import 'package:the_hit_times/news.dart';
import 'bottom_nav_gallery.dart';
import 'package:the_hit_times/menu.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin{

  int _currentIndex = 1;
  BottomNavigationBarType _type = BottomNavigationBarType.shifting;
  List<NavigationIconView> _navigationViews;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: const Icon(Icons.menu),
        title: 'Menu',
        color: Colors.black,
        vsync: this,
      ),
      new NavigationIconView(
        icon: const Icon(Icons.assignment),
        title: 'News',
        color: Colors.black,
        vsync: this,
      ),
      new NavigationIconView(
        icon: const Icon(Icons.info_outline),
        title: 'Contact Us',
        color: Colors.black,
        vsync: this,
      ),
    ];

    for (NavigationIconView view in _navigationViews)
      view.controller.addListener(_rebuild);

    _navigationViews[_currentIndex].controller.value = 1.0;

    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    for (NavigationIconView view in _navigationViews)
      view.controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _rebuild() {
    setState(() {
      // Rebuild in order to animate views.
    });
  }

  void onPageChanged(int page) {
    setState(() {
      this._currentIndex = page;
    });
  }


  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar botNavBar = new BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationView) => navigationView.item)
          .toList(),
      currentIndex: _currentIndex,
      type: _type,
      onTap: (int index) {
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
        });
      },
    );

    return new Scaffold(
      appBar: new AppBar(
        title: const Text('The HIT Times'),
        centerTitle: true,
      ),
      body: new Stack(
        children: <Widget>[
          new Offstage(
            offstage: _currentIndex != 0,
            child: new TickerMode(
              enabled: _currentIndex == 0,
              child: new Container(child : new SMenu()),
            ),
          ),
          new Offstage(
            offstage: _currentIndex != 1,
            child: new TickerMode(
              enabled: _currentIndex == 1,
              child: new Container(child: new News()),
            ),
          ),
          new Offstage(
            offstage: _currentIndex != 2,
            child: new TickerMode(
              enabled: _currentIndex == 2,
              child: new Container(child: new ContactUs()),
            ),
          ),
        ],
      ),
      bottomNavigationBar: botNavBar,
    );
  }
}