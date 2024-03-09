import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Sora',
                  color: Color.fromARGB(255, 30, 19, 4),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Bilzen, Tanjungbalai',
                    style: TextStyle(
                      color: Color.fromARGB(255, 30, 19, 4),
                      fontSize: 14,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color(0xffDDDDDD),
                  ),
                ],
              ),
            ],
          ),
          Image.asset('assets/images/user.png'),
        ],
      ),
    );
  }
}
