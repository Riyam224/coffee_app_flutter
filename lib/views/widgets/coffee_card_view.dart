import 'package:coffee_app/views/detail_view.dart';
import 'package:coffee_app/views/widgets/coffee_card_image.dart';
import 'package:flutter/material.dart';

class CoffeeCardView extends StatelessWidget {
  const CoffeeCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => const CustomCard()),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const DetailView();
        }));
      },
      child: const Column(
        children: [
          // todo size box net needed

          CoffeeCardImage(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Cappucino',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: 'Sora',
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
// todo
