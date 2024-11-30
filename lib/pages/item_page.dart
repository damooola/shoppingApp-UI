import 'package:flutter/material.dart';

import '../widgets/item_app_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ItemAppBar(),
          
        ],
      ),
    );
  }
}
