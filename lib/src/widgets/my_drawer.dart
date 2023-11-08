import 'package:api_marvel/src/widgets/my_head_drawer.dart';
import 'package:api_marvel/src/widgets/my_items_drawer.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black87,
      child: ListView(
        children: const [
          MyHeaderDrawer(),
          MyItemsDrawer()
        ],
      ),
    );
  }
}
