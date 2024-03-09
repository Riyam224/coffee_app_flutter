import 'package:coffee_app/views/widgets/coffee_card_view.dart';
import 'package:flutter/material.dart';

class CardListView extends StatelessWidget {
  const CardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: CoffeeCardView(),
    );
  }
}
