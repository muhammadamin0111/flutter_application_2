import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Previuspage extends StatefulWidget {
  const Previuspage({Key? key}) : super(key: key);

  @override
  State<Previuspage> createState() => _PreviuspageState();
}

class _PreviuspageState extends State<Previuspage>
    with TickerProviderStateMixin {
  PageController? _pageController;
  TabController? _tabController;
  int? _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          onTap: (value) {
            _currentIndex = value;
            _pageController!.jumpToPage(_currentIndex!);
            setState(() {});
          },
          tabs: const [
            Tab(
              text: 'home',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'search',
              icon: Icon(Icons.search),
            ),
            Tab(
              text: 'notifications',
              icon: Icon(Icons.notification_add),
            ),
          ],
        ),
      ),

      // body: TabBarView(
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       alignment: Alignment.center,
      //       child: const Text('Home',style: TextStyle(fontSize: 30),
      //       ),
      //     ),
      //     Container(
      //       color: Colors.green,
      //       alignment: Alignment.center,
      //       child: const Text('search',style: TextStyle(fontSize: 30),
      //       ),
      //     ),
      //     Container(
      //       color: Colors.red,
      //       alignment: Alignment.center,
      //       child: const Text('notifications',style: TextStyle(fontSize: 30),
      //       ),
      //     ),
      //   ],
      // ),

      body: PageView(
        onPageChanged: (value) {
          _currentIndex = value;
          setState(() {});
        },
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: const Text(
              'Home',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text(
              'search',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              'notifications',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex!,
        onDestinationSelected: (value) {
          _currentIndex = value;
          _pageController!.animateToPage(_currentIndex!,
              duration: Duration(seconds: 1), curve: Curves.bounceInOut);
          _tabController!.animateTo(_currentIndex!,
              duration: Duration(seconds: 1), curve: Curves.easeIn);
          setState(() {});
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'search'),
          NavigationDestination(
              icon: Icon(Icons.notification_add), label: 'notifications'),
        ],
      ),
    );
  }
}
