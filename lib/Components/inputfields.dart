import 'package:flutter/material.dart';

class inputfields extends StatelessWidget {
  String? hint_text;

  TextEditingController? controller;
  inputfields({required this.hint_text, required this.controller});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),

      // ignore: prefer_const_constructors
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint_text,
        ),
      ),
    );
  }
}
