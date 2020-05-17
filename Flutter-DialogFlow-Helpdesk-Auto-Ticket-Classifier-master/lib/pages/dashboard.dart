import 'package:flutter/material.dart';
import 'package:stripe_demo/pages/appdrawer.dart';

class Dashboard extends StatefulWidget {
  final String pageTitle;

  Dashboard({Key key, this.pageTitle}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,

          backgroundColor: Colors.cyan[800],
          title:
          Text('Smart Help', style: TextStyle(
              fontSize: 21,
              letterSpacing: 2,
              color: Colors.white),
              textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              icon: Icon(Icons.alternate_email),
            ),
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              icon: Icon(Icons.timer),
            )
          ],
        ),
        drawer: new AppDrawer(),
        body: Text('Classify Tickets'),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.add_location),
                title: Text(
                  'location',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone_android),
                title: Text(
                  'Phone',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive),
                title: Text(
                  'archive ',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user),
                title: Text(
                  'Profile',
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.data_usage),
                title: Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ))
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green[600],
          onTap: _onItemTapped,
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print('Index is $index');
    });
  }
}
