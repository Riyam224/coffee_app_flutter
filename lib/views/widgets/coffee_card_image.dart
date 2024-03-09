// todo coffee card image
import 'package:flutter/material.dart';

class CoffeeCardImage extends StatelessWidget {
  const CoffeeCardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 141,
          height: 132,
          child: Image.asset('assets/images/Rectangle 1706.png'),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        ),
        const Positioned(
          top: 2,
          left: 5,
          child: SizedBox(
            width: 51,
            height: 25,
            child: Row(
              children: [
                Text(
                  '\$',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '10.99',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sora',
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
