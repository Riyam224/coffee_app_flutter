import 'package:coffee_app/views/detail_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeCardView extends StatelessWidget {
  CoffeeCardView({super.key});

  List<String> imageList = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/5.jpg',
    'assets/images/5a.jpg',
    'assets/images/7.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/5.jpg',
    'assets/images/5a.jpg',
    'assets/images/7.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
  ];
  List<String> coffeeList = [
    'Macchiato',
    'Cappuccino',
    'Doppio',
    'Irish',
    'Americano',
    'blacl tea',
    'Macchiato',
    'Cappuccino',
    'Doppio',
    'Irish',
    'Macchiato',
    'Cappuccino',
    'Doppio',
    'Irish',
    'Americano',
    'blacl tea',
    'Macchiato',
    'Cappuccino',
    'Doppio',
    'Irish',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const DetailView();
                      }));
                    },
                    // todo image list
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(imageList[index]),
                      ),
                    ),
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
                            '4.53',
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
              ),
              // todo
              Text(
                coffeeList[index],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Sora',
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('price: 4.22'),
                  SizedBox(width: 5),
                  Icon(Icons.ac_unit_outlined),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
