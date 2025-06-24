import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './Components/drawerComponent.dart';
import 'ListView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3DCDCDC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF3DCDCDC),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔍 Search Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: const Icon(Icons.search),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "Search",
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ✈️ Tagline
            const Center(
              child: Text(
                "Everyone flies.. some fly longer",
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 25),

            // 🔥 Hot Picks Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: const [
                  Text(
                    "Hot Picks 🔥",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 🏷️ ListView Builder (Horizontal Scroll)

            Listview(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
