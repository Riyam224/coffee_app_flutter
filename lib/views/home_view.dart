// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:coffee_app/views/coffee_card_view.dart';
import 'package:coffee_app/views/widgets/coffee_card_view.dart';
import 'package:coffee_app/views/widgets/coffee_showcase_image.dart';
import 'package:coffee_app/views/widgets/custom_navbar.dart';
import 'package:coffee_app/views/widgets/custom_searchbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomNavbar(),
            CustomSearchBar(),
            CustomImage(),
            CoffeeShowCase(),
            SizedBox(
              height: 15,
            ),
            CoffeeCardView(),
          ],
        ),
      ),
    );
  }
}
