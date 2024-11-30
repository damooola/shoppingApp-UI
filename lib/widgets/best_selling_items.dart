import 'package:fashion_shop_app/widgets/categories.dart';
import 'package:flutter/material.dart';

class MyBestSellingItems extends StatelessWidget {
  const MyBestSellingItems({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // best selling item grid view
        GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.62,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        for (int i = 1; i <= 6; i++)
          Container(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
            margin: const EdgeInsets.only(right: 8, left: 8, bottom: 8, top: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 3,
                  blurStyle: BlurStyle.normal,
                  color: Color.fromARGB(255, 198, 186, 218),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 64, 36, 120),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "-50%",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Color.fromARGB(255, 246, 19, 3),
                      ),
                    ]),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, "/item_page"),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset("images/$i.png"),
                    ),
                  ),
                ),
                Text(nameOfCategoryItems[i - 1],
                    style: Theme.of(context).textTheme.displayMedium),
                Expanded(
                  child: Text("description",
                      style: Theme.of(context).textTheme.displaySmall),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$50.00",
                        style: Theme.of(context).textTheme.displayMedium),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_checkout))
                  ],
                )
              ],
            ),
          )
      ],
    );
  }
}
