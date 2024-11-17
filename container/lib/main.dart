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
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 22,
        title: const Text("Demo container"),
      ),
      
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 108, 74, 114),
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
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            width: 300,
            height: 200,
            margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 197, 220),
                borderRadius: BorderRadius.circular(10)),
        //         image:  NetworkImage('https://images.unsplash.com/photo-1607604276583-eef5d076aa5f?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            
            child: Align( child: Text("container" , )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            width: 400,
            height: 100,
            margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 197, 220),
                borderRadius: BorderRadius.circular(10)),
            child: Text("contenue : $counter"),
      ),
        ],
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
