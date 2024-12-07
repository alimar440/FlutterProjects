// ignore_for_file: prefer_final_fields

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:hexcolorname/hexcolorname.dart';
import 'package:myloginpage/service/firebase/auth.dart';
import 'package:myloginpage/utils/global.colors.dart';
import 'package:myloginpage/view/widgets/social.login.dart';
//import 'package:myloginpage/view/widgets/button.global.dart';
// import 'package:myloginpage/view/widgets/text.form.global.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  bool _obscureText = true;
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.jpg",
                  scale: 2,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 40,
                    color: GlobalColors.mainColor,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Sign in now to accept your opportunities",
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                // Email TextField
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: GlobalColors.mainColor,
                      ),
                      labelStyle: TextStyle(color: GlobalColors.textColor),
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: GlobalColors.mainColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Veuillez entrer une adresse email valide';
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(
                  height: 20,
                ),
                // Password TextField
                TextFormField(
                    keyboardType: TextInputType.text,
                    controller: passwordcontroller,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: GlobalColors.textColor),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: GlobalColors.mainColor,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: GlobalColors.mainColor,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText =
                                !_obscureText; // Inverse l'état pour afficher/masquer
                          });
                        },
                      ),
                      hintText: 'Entrer votre mot de passe',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: GlobalColors.mainColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Veuillez entrer votre mot de passe";
                      } else {
                        return null;
                      }
                    }),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Mot de passe oublié ? ",
                      style: TextStyle(
                          color: GlobalColors.textColor, fontSize: 17),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SocialLogin(),
                const SizedBox(
                  height: 30,
                ),
                //    ButtonGlobal(),
                ElevatedButton(
                  onPressed: _isLoading ? null : () async {
                          setState(() {
                            _isLoading = true;
                          });
                          try {
                            //final UserCredential usercred = await FirebaseAuth;
                            await Auth().loginwithEmailAndPassword(
                              emailcontroller.text,
                              passwordcontroller.text,
                            );
                            setState(() {
                            _isLoading = true;
                          });
                          } on FirebaseAuthException catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("${e.message}"),
                                backgroundColor: Colors.red,
                                behavior: SnackBarBehavior.floating,
                                showCloseIcon: true,
                              ),
                            );
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalColors.mainColor,
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 80),
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
