// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffee_app/views/thanks_for_buying.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymenetDetails extends StatelessWidget {
  const PaymenetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Payment  Method',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Sora',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, bottom: 20),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xffC67C4E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Pay with Debit/Credit Card',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sora',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 80, bottom: 10),
              child: Text(
                'Card Number',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              'XXXX XXXX XXXX XXXX',
              style: TextStyle(color: Color(0xffD49F9F)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 115),
                  child: Text('EXP'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 120),
                  child: Text('CVV'),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 113),
                  child: Text(
                    'MM/YY',
                    style: TextStyle(
                      color: Color(0xffD49F9F),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 100),
                  child: Text(
                    'XXX',
                    style: TextStyle(color: Color(0xffD49F9F)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, bottom: 20),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Pay on Delivery',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sora',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EnjoyIt();
                }));
              },
              child: Container(
                width: 240,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xffC67C4E),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Pay Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
