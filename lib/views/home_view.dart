import 'package:coffee_app/views/widgets/coffee_card_view.dart';
import 'package:coffee_app/views/widgets/coffee_types.dart';
import 'package:coffee_app/views/widgets/custom_navbar.dart';
import 'package:coffee_app/views/widgets/custom_searchbar.dart';
import 'package:coffee_app/views/widgets/promo_image.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            children: [
              // todo navbar
              CustomNavbar(),
              // todo

              SizedBox(
                height: 40,
              ),
              CustomSearchBar(),
              SizedBox(
                height: 20,
              ),
              PromoImage(),
              SizedBox(
                height: 20,
              ),
              CoffeeTypes(),
              SizedBox(
                height: 20,
              ),
              // todo
              CoffeeCardView(),
            ],
          ),
        ),
      ),
    );
  }
}
