import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:  Container(
          height: double.infinity,
          width: double.infinity,
         // margin: EdgeInsets.symmetric(vertical: 20),
         padding: EdgeInsets.only(top: 200 , left: 100),
          decoration:  BoxDecoration(
            // gradient:const LinearGradient(
            //   begin: Alignment.topRight ,
            //   end: Alignment.bottomLeft ,
            //   colors: const [
            //     Colors.deepPurple ,
            //     Colors.purple ,
            //   ]
              
            // ) ,
            image:const DecorationImage(
              image: NetworkImage("https://bit.ly/3VBAIIg"),
               fit: BoxFit.cover

            ),
            
            // border: Border.all(
            //   color: Colors.deepPurpleAccent ,
            //   width: 5 ,
            // ),
           // borderRadius: BorderRadius.circular(20) ,
        ),

        child: const Text(
          "Jappalante" ,
          style: TextStyle(color : Colors.white ,
          fontSize : 40 ,
          fontWeight : FontWeight.w300 ,),

        ),
      ),
      ));
  }
}