import 'package:flutter/material.dart';
import 'package:matrix_link/BlogsPage.dart';
import 'package:matrix_link/BookPage.dart';
import 'package:matrix_link/MapPage.dart';
import 'package:matrix_link/NotificationPage.dart';
import 'package:matrix_link/drawer.dart';
// import 'package:matrix_link/screens/home_screen.dart';
// import 'package:matrix_link/HomePage.dart';
import 'package:matrix_link/screens/home_screen.dart';

// import '../HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _topoption = [
    "Travel-Nepal",
    "Book Now",
    "Map-Tour",
    "Read Blogs",
    "Notifications",
  ];
  int _seletedItem = 0;
  var _pages = [
    // BookPage(),
    HomeScreen(),
    BookPage(),
    MapPage(),
    BlogsPage(),
    NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyDrawer()));
          },
        ),
        centerTitle: true,
        title: Text(
          _topoption[_seletedItem],
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        titleSpacing: 2.00,
        elevation: 0.0,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: _pages[_seletedItem],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined), label: 'Online Booking'),
          BottomNavigationBarItem(
              icon: Icon(Icons.maps_ugc_rounded), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.read_more_outlined), label: 'Blogs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notification'),
        ],
        currentIndex: _seletedItem,
        onTap: (index) {
          setState(() {
            _seletedItem = index;
          });
        },
      ),
    );
  }
}
