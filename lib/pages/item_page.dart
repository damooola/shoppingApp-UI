import 'package:clippy_flutter/arc.dart';
import 'package:fashion_shop_app/widgets/item_bottom_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/item_app_bar.dart';

final List<Color> listofColors = [
  Colors.red,
  Colors.black,
  Colors.blue,
  Colors.grey,
  Colors.yellow,
  Colors.brown,
];

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset("images/1.png", width: double.infinity)),
          ),
          Arc(
              height: 25,
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, bottom: 10),
                      child: Row(
                        children: [
                          Text("Product Title",
                              style: Theme.of(context).textTheme.displayLarge)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 6,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 25,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) =>
                                const Icon(Icons.favorite),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10)
                                    ]),
                                child:
                                    const Icon(CupertinoIcons.minus, size: 20),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                child: Text(
                                  "05",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 3,
                                          blurRadius: 10)
                                    ]),
                                child:
                                    const Icon(CupertinoIcons.plus, size: 20),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3),
                        child: Text(
                          "Detailed description of item, mnore write up here to give more descrption to item",
                          style: Theme.of(context).textTheme.displaySmall,
                          textAlign: TextAlign.justify,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          Text(
                            "Size:",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              for (int i = 5; i <= 12; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 8)
                                      ]),
                                  child: Text(
                                    i.toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium,
                                  ),
                                )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            "Colour:",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              for (int i = 0; i < 6; i++)
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: listofColors[i],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.5),
                                            spreadRadius: 2,
                                            blurRadius: 8)
                                      ]),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: const ItemBottomNavbar(),
    );
  }
}
