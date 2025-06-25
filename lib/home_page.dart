import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import './Components/drawerComponent.dart';
import 'shop.dart';
import 'cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> Pages = [Shop(), Cart()];
  int selectedIndex = 0;
  void navigateBottomBar(int value) {
    setState(() {
      selectedIndex = value;
    });
  }

  double opacity = 1;
  // double opacity = 0;
  // void changeColor() {
  //   setState(() {
  //     if (opacity == 0) {
  //       opacity = 1;
  //     } else {
  //       opacity = 0;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3dcdcdc),
      appBar: AppBar(
        backgroundColor: const Color(0xff3dcdcdc).withOpacity(opacity),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/logo.png"),
            drawerComponent("Home", Icons.home),
            const SizedBox(height: 20),
            drawerComponent("About", Icons.error),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: drawerComponent("Logout", Icons.logout_rounded),
            ),
          ],
        ),
      ),
      body: Pages[selectedIndex],
      bottomNavigationBar: SizedBox(
        child: GNav(
            padding: EdgeInsets.all(25),
            backgroundColor: const Color(0xff3dcdcdc),
            activeColor: Colors.black,
            color: Colors.grey,
            gap: 10,
            iconSize: 27,
            curve: Curves.easeInCubic,
            mainAxisAlignment: MainAxisAlignment.center,
            onTabChange: (value) {
              navigateBottomBar(value);
            },
            tabs: [
              GButton(
                borderRadius: BorderRadius.circular(15),
                backgroundColor: Colors.white,
                icon: Icons.home,
                text: "Shop",
                textSize: 17,
                textStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              GButton(
                borderRadius: BorderRadius.circular(15),
                backgroundColor: Colors.white,
                icon: Icons.shopping_bag,
                text: "Cart",
              ),
            ]),
      ),
    );
  }
}
