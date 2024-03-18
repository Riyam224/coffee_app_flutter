import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 110),
                  child: Text(
                    'Location',
                    style: TextStyle(fontSize: 12, fontFamily: 'Sora'),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Bilzen, Tanjungbalai',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                    ),
                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/user.png'),
            ),
          ],
        ),
      ),
    );
  }
}
