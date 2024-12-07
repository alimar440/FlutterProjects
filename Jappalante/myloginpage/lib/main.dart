import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myloginpage/firebase_options.dart';
//import 'package:myloginpage/view/Splash.view.dart';
import 'package:get/get.dart';
import 'package:myloginpage/view/Splash.view.dart';
import 'package:myloginpage/view/login.view.dart';
import 'package:myloginpage/view/redirection.view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView() ,
        	   
    );
  }
}
