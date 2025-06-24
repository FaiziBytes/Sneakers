import "package:flutter/material.dart";

Widget drawerComponent(String text, IconData icondata) {
  return Padding(
    padding: EdgeInsets.only(left: 40),
    child: Row(
      children: [
        Icon(
          icondata,
          color: Colors.black,
          size: 30,
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
