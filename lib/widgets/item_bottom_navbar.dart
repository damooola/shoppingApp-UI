import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavbar extends StatelessWidget {
  const ItemBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      height: 100,
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 3))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$120",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.cart_badge_plus),
              label: const Text("Add to  Cart"),
            )
          ],
        ),
      ),
    );
  }
}
