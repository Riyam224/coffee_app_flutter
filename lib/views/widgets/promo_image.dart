import 'package:flutter/material.dart';

class PromoImage extends StatelessWidget {
  const PromoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: const Color(0xff000000),
        borderRadius: BorderRadius.circular(20),
      ),
      // todo stack
      child: SizedBox(
        child: Image.asset(
          'assets/images/coffee.png',
          fit: BoxFit.cover,
        ),
        width: double.infinity,
      ),
    );
  }
}
