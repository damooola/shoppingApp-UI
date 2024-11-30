import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fashion_shop_app/widgets/home_app_bar.dart';
import 'package:fashion_shop_app/widgets/best_selling_items.dart';
import 'package:fashion_shop_app/widgets/categories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // app bar
          const ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: HomeAppBar()),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 231, 231, 231),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                //search textfield
                SearchBar(
                  hintText: "Search here...",
                  trailing: [
                    IconButton(
                      icon: const Icon(Icons.camera_alt),
                      onPressed: () {},
                    )
                  ],
                ),
                const SizedBox(height: 20),

                //categories text
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Categories",
                        style: Theme.of(context).textTheme.displayLarge)),
                const SizedBox(height: 10),

                //categotries section
                const MyCategories(),
                const SizedBox(height: 25),

                //best selling text
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Best Selling",
                        style: Theme.of(context).textTheme.displayLarge)),
                const SizedBox(height: 10),

                // best settling section
                const MyBestSellingItems(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {},
          height: 70,
          color: const Color.fromARGB(255, 64, 36, 120),
          backgroundColor: Colors.transparent,
          items: const [
            Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 35,
            ),
            Icon(
              Icons.list,
              color: Colors.white,
              size: 35,
            )
          ]),
    );
  }
}
