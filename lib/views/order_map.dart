// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coffee_app/views/order_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderMap extends StatelessWidget {
  const OrderMap({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/maps.png', // Replace with your image URL
                    width: double.infinity,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 16,
                      left: 16,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return OrderView();
                              }));
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                            ),
                          ),
                          SizedBox(width: 280),
                          Icon(Icons.location_on),
                        ],
                      )),
                  Positioned(
                    top: 40,
                    left: 100,
                    child: Image.asset(
                      'assets/images/pin.png',
                      width: 100,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 200,
                    child: Image.asset(
                      'assets/images/pin.png',
                      width: 100,
                    ),
                  ),
                  Positioned(
                    top: 100,
                    right: 200,
                    child: Image.asset(
                      'assets/images/pin.png',
                      width: 100,
                    ),
                  ),
                  Positioned(
                    top: 200,
                    right: 200,
                    child: Image.asset(
                      'assets/images/pin.png',
                      width: 100,
                    ),
                  ),
                  Positioned(
                    top: 300,
                    right: 250,
                    child: Image.asset(
                      'assets/images/pin.png',
                      width: 100,
                    ),
                  ),
                  Positioned(
                    top: 400,
                    right: 270,
                    child: Image.asset(
                      'assets/images/pin.png',
                      width: 100,
                    ),
                  ),
                ],
              ),
            ),
            // todo
            Container(
              width: double.infinity,
              height: 238,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 15, bottom: 15, left: 10, right: 10),
                child: Column(
                  children: [
                    Text(
                      '10 minutes left',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Sora',
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Delivery to'),
                        Text(
                          ' Jl. Kpg Sutoyo',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset('assets/images/Frame 3179.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              children: [
                                Text(
                                  'Delivered your order',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    'We deliver your goodsu in shortes possible time.',
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Text(
                                  ' to you in the shortes possible time.',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // todo
                    Container(
                      width: 330,
                      height: 50,
                      child: Row(
                        children: [
                          Image.asset('assets/images/Group 3147.png'),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              children: [
                                Text(
                                  'Johan Hawn',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('Personal Courier'),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 100),
                          Icon(
                            Icons.phone,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
