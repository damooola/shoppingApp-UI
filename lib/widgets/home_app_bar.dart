import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Shop Here"),
      centerTitle: true,
      leading: const Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Icon(Icons.sort),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: Badge(
            padding: const EdgeInsets.all(3),
            backgroundColor: const Color.fromARGB(255, 246, 19, 3),
            textColor: Colors.white,
            label: const Text("3"),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, "/cart_page"),
              child: const Icon(Icons.shopping_bag_outlined),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
