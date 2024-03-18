// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:coffee_app/views/home_view.dart';
import 'package:coffee_app/views/order_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeView();
                        }));
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xffC67C4E),
                      ),
                    ),
                    Text(
                      'Details',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                    ),
                  ],
                ),
              ),
              // todo
              Container(
                width: 315,
                height: 226,
                child: Image.asset(
                  'assets/images/9.jpg',
                  fit: BoxFit.fill,
                ),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(60)),
              ),

              const Padding(
                padding: EdgeInsets.only(
                  right: 175,
                  top: 10,
                ),
                child: Text(
                  'Cappucino',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sora'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: 175,
                ),
                child: Text(
                  'with Chocolate',
                  style: TextStyle(fontSize: 12, fontFamily: 'Sora'),
                ),
              ),
              // todo
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Icon(
                      Icons.star,
                      color: Color(0xffFBBE21),
                      size: 25,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        '4.8',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 120,
                        ),
                        child: Text(
                          ' (230)',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Image.asset('assets/images/bean.png'),
                      const SizedBox(width: 18),
                      Image.asset('assets/images/milk.png')
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200, bottom: 15),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 20,
                ),
                child: Text(
                  'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text(
                      'Size',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // todo sizes
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      bottom: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 96,
                          height: 50,
                          child: Center(
                            child: Text(
                              'S',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffFFFFFF),
                          ),
                        ),
                        Container(
                          width: 96,
                          height: 50,
                          child: Center(
                            child: Text(
                              'M',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffC67C4E)),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffFFF5EE),
                          ),
                        ),
                        Container(
                          width: 96,
                          height: 50,
                          child: Center(
                            child: Text(
                              'L',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // todo end of size
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          children: [
                            Text('Price'),
                            Text(
                              '\$ 4.53',
                              style: TextStyle(
                                color: Color(
                                  0xffC67C4E,
                                ),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const OrderView();
                          }));
                        },
                        child: Container(
                          width: 245,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Buy now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: Color(0xffC67C4E),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
