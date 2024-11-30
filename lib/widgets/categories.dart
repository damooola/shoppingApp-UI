import 'package:flutter/material.dart';

//list of items names
final List<String> nameOfCategoryItems = [
  "Sandal",
  "Watch",
  "Office Bag",
  "Luggage",
  "HandBag",
  "Heels",
];

class MyCategories extends StatelessWidget {
  const MyCategories({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i <= 6; i++)
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 2,
                          blurStyle: BlurStyle.normal,
                          color: Color.fromARGB(255, 198, 186, 218),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  margin: const EdgeInsets.only(right: 15),
                  child: categoryImageAndNameContainer(i, context)),
            ),
        ],
      ),
    );
  }

  Widget categoryImageAndNameContainer(int i, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "images/$i.png",
          width: 45,
          height: 45,
        ),
        const SizedBox(width: 3),
        Text(
          nameOfCategoryItems[i - 1],
          style: Theme.of(context).textTheme.displayMedium,
        )
      ],
    );
  }
}
