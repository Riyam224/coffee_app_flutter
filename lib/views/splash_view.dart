import 'package:coffee_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 450,
            child: Image.asset(
              'assets/images/splash.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            color: const Color(0xff000000),
            height: 333.26,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Coffee so good, your taste buds will love it.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      color: Color(0xffFFFFFF),
                      fontFamily: 'Sora',
                    ),
                  ),
                ),
                // todo
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 25,
                  ),
                  child: Text(
                    'The best grain, the finest roast, the powerful flavor. , The Bean Organic Coffee Company Organic House Blend,',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffA9A9A9),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // todo
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomeView();
                    }));
                  },
                  child: Container(
                    width: 315,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffC67C4E),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: 'Sora',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
