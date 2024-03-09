import 'package:flutter/material.dart';

class CoffeeTypes extends StatelessWidget {
  const CoffeeTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Container(
            width: 120,
            height: 40,
            child: Center(
              child: Text(
                'Cappuccino',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sora',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffC67C4E)),
          ),
          // todo
          const SizedBox(
            width: 14,
          ),
          Container(
            width: 120,
            height: 40,
            child: Center(
              child: Text(
                'Machiato',
                style: TextStyle(
                  fontFamily: 'sora',
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xff2F4B4E,
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Container(
            width: 120,
            height: 40,
            child: Center(
              child: Text(
                'Latte',
                style: TextStyle(
                  fontFamily: 'sora',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff2F4B4E),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          // todo
          const SizedBox(
            width: 14,
          ),
          Container(
            width: 120,
            height: 40,
            child: Center(
              child: Text(
                'Americano',
                style: TextStyle(
                  color: Color(0xff2F4B4E),
                  fontFamily: 'sora',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          SizedBox(
            width: 14,
          ),

          Container(
            width: 120,
            height: 40,
            child: Center(
              child: Text(
                'Macchiato',
                style: TextStyle(
                  color: Color(0xff2F4B4E),
                  fontFamily: 'sora',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          // todo
          const SizedBox(
            width: 14,
          ),
          Container(
            width: 120,
            height: 40,
            child: Center(
              child: Text(
                'Espresso',
                style: TextStyle(
                  color: Color(0xff2F4B4E),
                  fontFamily: 'sora',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
