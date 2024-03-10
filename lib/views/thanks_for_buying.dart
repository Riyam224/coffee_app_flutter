// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

class EnjoyIt extends StatelessWidget {
  const EnjoyIt({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/order complete enjoy it.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
