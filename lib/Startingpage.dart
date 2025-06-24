import "package:flutter/material.dart";

class StartingPage extends StatelessWidget {
  StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Image.asset(
          "assets/logo.png",
          height: 500,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: Text(
            "Just do it",
            style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            "Brand new sneakers and custom kicks made with premium quality",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(25),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white),
                onPressed: () {},
                child: Text("Shop now")),
          ),
        )
      ]),
    );
  }
}
