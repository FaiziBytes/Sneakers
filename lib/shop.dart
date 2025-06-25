import 'package:flutter/material.dart';
import 'SearchBar.dart';
import 'ListView.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔍 Search Field
          searchBar(),

          const SizedBox(height: 20),

          // ✈️ Tagline
          const Center(
            child: Text(
              "Everyone flies.. some fly longer",
              style: TextStyle(fontSize: 20),
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
          const SizedBox(height: 50),
          Divider(
            color: Colors.white,
            thickness: 3,
          )
        ],
      ),
    );
  }
}
