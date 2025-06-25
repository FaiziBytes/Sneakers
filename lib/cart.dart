import 'package:flutter/material.dart';
import 'package:sneakers/Components/cartlist.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Your Cart",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: namesOfItems.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: ListTile(
                      tileColor: Colors.white,
                      leading: Image.asset(imagesForCarts[index]),
                      title: Text(namesOfItems[index]),
                      subtitle: Text("\$1000"),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              namesOfItems.removeAt(index);
                              imagesForCarts.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete)),
                    ),
                  );
                })),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
              onPressed: () {},
              child: Text(
                "Pay Now",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
