import 'package:flutter/material.dart';
import 'package:myloginpage/utils/global.colors.dart';
import 'package:myloginpage/view/login.view.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:myloginpage/view/redirection.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Utilisation de Timer dans initS  tate pour éviter les appels répétitifs
    Timer(const Duration(seconds: 4), () {
      Get.to(RedirectionView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text(
          'J a a p a l a n t e',
          style: TextStyle(
            color: Colors.white,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
