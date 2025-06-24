import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  Listview({super.key});
  List<String> imagesLinks = [
    "assets/NikeAir1.png",
    "assets/Nike1.png",
    "assets/NikeClassic.png",
    "assets/NikeJordan.png",
    "assets/NikeAirMaxDNSafariElectricOrange.png"
  ];
  List<String> shoesNameLinks = [
    "Nike Air Force 1",
    "Nike Air 1",
    "Nike Chuck Taylor",
    "Nike Jordan",
    "Nike Air Max DN Safari"
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 460,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 30, right: 10),
        itemCount: imagesLinks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 340,
                decoration: const BoxDecoration(
                  color: Color(0xFFF9F9F9),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(imagesLinks[index]),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "The Forward thinking design of his latest signature shows",
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                shoesNameLinks[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$1000",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 70,
                            width: 70,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                backgroundColor: Colors.black,
                              ),
                              onPressed: () {},
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
