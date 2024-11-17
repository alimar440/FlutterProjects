import 'package:flutter/material.dart';



void main() {
  runApp(const MaterialApp(
    home: HomePage1(),
  ));
}

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override 
  State<HomePage1> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage1> {

  int counter = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 12,
        title: const Text("JAPPALANTÉ"),
      ), 
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Accueil'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Paramètres'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('À propos'),
          ),
        ]),
      ),
      body:  Center(
        child: Text("contenue : $counter"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(elevation: 20.0, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wifi),
          label: 'WIFI',
        ),
      ]),
    );
  }
}

//StatelessWidget
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 12,
        title: const Text("JAPPALANTÉ"),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Accueil'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Paramètres'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('À propos'),
          ),
        ]),
      ),
      body: const Center(
        child: Text("contenue"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(elevation: 20.0, items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wifi),
          label: 'WIFI',
        ),
      ]),
    );
  }
}
