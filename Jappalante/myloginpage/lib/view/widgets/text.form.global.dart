import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  TextFormGlobal(
      {super.key,
      required this.controller,
      required this.text,
      required this.textInputType,
      required this.obscure});
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.only(top: 3, left: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 7,
            )
          ]),
      child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          obscureText: obscure,
          decoration: InputDecoration(
              hintText: text,
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(0),
              hintStyle: TextStyle(
                height: 1,
              ))),
    );
  }
}
