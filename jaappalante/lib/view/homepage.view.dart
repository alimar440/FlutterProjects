import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jaappalante/service/firebase/auth.dart';
import 'package:jaappalante/utils/global.colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final User? user = Auth().currentUser;
  int _selectedIndex = 0;

  List<Widget> _screens = [
    // Home(),
    // ScreenTwo(),
    // ScreenThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.mainColor,
        actions: [
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              Auth().logout();
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: GlobalColors.mainColor,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              padding: EdgeInsets.all(16),
              gap: 8,
              onTabChange: (index) {
                setState() {
                  _selectedIndex = index;
                }
              },
              // creation de tabs
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.notifications,
                  text: 'Notif',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'recherche',
                ),
                GButton(icon: Icons.person, text: 'Profil'),
              ]),
        ),
      ),
      backgroundColor: Colors.white,
      // body: _screens[_selectedIndex],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            user == null ? Text('Loading...') : Text('Welcome, ${user?.email}'),
          ],
        ),
      ),
    );
  }
}
