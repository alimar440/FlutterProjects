import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jaappalante/utils/category_box.dart';
import 'package:jaappalante/utils/global.colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List myCategories = [
    ["Shopping", Icons.shopping_cart, true],
    ["Menage", Icons.cleaning_services, false],
    ["Reparation", Icons.build, false],
    ["Autre", Icons.shopping_cart, false]
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      myCategories[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  // _selectedIndex = index;
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
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      size: 45,
                      color: GlobalColors.mainColor,
                    ),
                    Icon(
                      Icons.menu,
                      size: 45,
                      color: GlobalColors.mainColor,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Welcome Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to Home",
                      style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                    ),
                    Text(
                      "ALY MAR",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 72,
                      ),
                    ),
                  ],
                ),
              ),

              // Categories Header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ),
              ),

              // Categories Grid
              SizedBox(
                height: 500, // Constrain the height of the GridView
                child: GridView.builder(
                  itemCount: myCategories.length,
                  padding: const EdgeInsets.all(25.0),
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable scrolling
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index) {
                    return CategoryBox(
                      categoryName: myCategories[index][0],
                      categoryIcon: myCategories[index][1],
                      powerOn: myCategories[index][2],
                      onChanged: (value) => powerSwitchChanged(value, index),
                    );
                  },
                ),
              ),
              // Container(
              //   child: ,
              // )
              // Conditional Buttons
              if (myCategories[0][2] ||
                  myCategories[1][2] ||
                  myCategories[2][2] ||
                  myCategories[3][2])
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    height: 700,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                          vertical: verticalPadding),
                      child: ListView(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Bouton 1"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity,
                                  60), // Largeur de 100% et hauteur de 60
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Bouton 1"),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity,
                                  60), // Largeur de 100% et hauteur de 60
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
