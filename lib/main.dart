import 'package:flutter/material.dart';

import 'tabs/profile.dart'; 
import 'tabs/contact.dart'; 
import 'tabs/about.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250.0,
                backgroundColor: Color.fromARGB(255, 77, 36, 78),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/me.png',
                    fit: BoxFit.cover,
                  ),
                ),
                pinned: true,
                title: Text("Bel's Portfolio", style: TextStyle(color: Color.fromARGB(255, 239, 215, 240)),),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.badge), text: 'Profile'),
                      Tab(icon: Icon(Icons.person), text: 'About'),
                      Tab(icon: Icon(Icons.forum), text: 'Contact'),
                    ],
                    indicatorColor: Color.fromARGB(255, 249, 234, 250), // Change indicator color
                    labelColor: Colors.white,      // Active tab color
                    unselectedLabelColor: Color.fromARGB(255, 90, 55, 90), // Inactive tab color
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              ProfileTab(),
              AboutTab(),
              ContactTab(),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom delegate for the SliverPersistentHeader to hold the TabBar
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      color: Color(0xFFC7A3C8), // Set the background color of the TabBar
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true; // Rebuild whenever the header changes
  }
}