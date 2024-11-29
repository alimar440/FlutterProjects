import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Jours aleatoires",
      home: JoursAleatoires(),
    );
  }
}

class JoursAleatoires extends StatefulWidget {
  const JoursAleatoires({super.key});

  @override
  State<JoursAleatoires> createState() => _JoursAleatoiresState();
}

class _JoursAleatoiresState extends State<JoursAleatoires> {
  List<String> joursdelaSemaine = [
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
    "Samedi",
    "Dimanche"
  ];
  int indexJoursActuel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Application jours aleatoires" , 
          style: TextStyle(
            color: Colors.white, 
            fontSize: 20,
            fontWeight: FontWeight.bold,
           ),
          ),
          backgroundColor: const  Color.fromARGB(255, 19, 83, 139),
          
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Cliquez pour voir un nouveau jour",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 19, 83, 139),
              ),
            ),
            Text(
              joursdelaSemaine[indexJoursActuel],
              style: const TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 19, 83, 139),
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  int newIndex;
                  do {
                    newIndex = Random().nextInt(7);
                  } while (newIndex == indexJoursActuel);
                  indexJoursActuel = newIndex;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 19, 83, 139), // Couleur de fond
                foregroundColor: Colors.white, // Couleur du texte
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // Padding
              ),
              child: const Text("Generer un jour "),
            )
          ],
        )));
  }
}
