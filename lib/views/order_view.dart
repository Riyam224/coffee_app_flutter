// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:coffee_app/views/detail_view.dart';
import 'package:coffee_app/views/order_map.dart';
import 'package:coffee_app/views/payment_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  // todo
  late int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailView();
                        }));
                      },
                      child: Icon(Icons.arrow_back_ios_new)),
                  SizedBox(width: 125),
                  Text(
                    'Order',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Sora'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffC67C4E),
                    ),
                    child: Center(
                      child: Text(
                        'Deliver',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Sora'),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF2F2F2),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return OrderMap();
                          }));
                        },
                        child: Text(
                          'Track it',
                          style: TextStyle(
                              color: Color(0xff2F2D2C),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sora'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text(
                'Delivery Address',
                style: TextStyle(
                  color: Color(0xff2F2D2C),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 165,
                top: 20,
              ),
              child: Text(
                'Jl. Kpg Sutoyo',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 50,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                style: TextStyle(fontSize: 12, color: Color(0xff808080)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                bottom: 30,
              ),
              // todo
              child: Row(
                children: [
                  Container(
                      width: 145,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF2F2F2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                            ),
                            SizedBox(width: 2),
                            Text('Edit Address'),
                          ],
                        ),
                      )),
                  SizedBox(width: 5),
                  Container(
                      width: 145,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF2F2F2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, right: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.note_add,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text('Add Note'),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            // todo
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset('assets/images/Rectangle 1706e.png'),
                ),
                Column(
                  children: [
                    // todo stateful quantity
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 80, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              quantity--;
                            },
                            child: Icon(
                              Icons.remove,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            '$quantity',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(width: 5),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // todo
            Padding(
              padding: const EdgeInsets.only(right: 145, top: 20, bottom: 20),
              child: Text(
                'Payment Summary',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Sora'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 200),
                    child: Text(
                      '\$4.53',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // todo

            Padding(
              padding: const EdgeInsets.only(left: 13, top: 15),
              child: Row(
                children: [
                  Text(
                    'Delivery Fee',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Text(
                      '\$1.0',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // todo
                ],
              ),
            ),
            // todo

            Padding(
              padding: const EdgeInsets.only(left: 13, top: 15),
              child: Row(
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140),
                    child: Text(
                      '\$5.53',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // todo
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PaymenetDetails();
                }));
              },
              child: Container(
                width: double.infinity,
                height: 60,
                child: Center(
                    child: Text('Order',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ))),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffC67C4E),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
