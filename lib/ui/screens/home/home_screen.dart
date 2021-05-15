import 'package:basic/services/navigator_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  int _currentIndex;
  Size _size;
  _toggleBottomBar(int index) {
    _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOutSine);
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // title: Text('Home'),
        actions: [
          InkWell(
            onTap: () {
              NavigatorService.toSettings();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.miscellaneous_services_sharp, color: Theme.of(context).primaryColor),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.only(top: _size.height * 0.3),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Title of the app',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
                Icon(
                  Icons.admin_panel_settings_outlined,
                  size: _size.width / 3,
                  color: Theme.of(context).accentColor,
                ),
                SelectableText(
                  'data ',
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FlatButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      NavigatorService.toLogin();
                    },
                    child: Text('Log out'),
                  ),
                ),
              ],
            ),
          ),
          Container(color: Colors.orange),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black38,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _toggleBottomBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_history),
            label: 'Users & Docs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mediation),
            label: 'Main role direction',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu, size: 36),
        onPressed: () {
          NavigatorService.showError();
          NavigatorService.showError();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
