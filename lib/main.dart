import 'package:coffee_app/views/home_view.dart';
import 'package:coffee_app/views/order_map.dart';
import 'package:coffee_app/views/order_view.dart';
import 'package:coffee_app/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
