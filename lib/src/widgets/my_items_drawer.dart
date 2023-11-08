import 'package:api_marvel/src/utils/my_items_drawer.dart';
import 'package:flutter/material.dart';

class MyItemsDrawer extends StatelessWidget {
  const MyItemsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var listItems = MyListItems().items;

    return ListView.builder(
              shrinkWrap: true,
              itemCount: listItems.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (_, i) {
                return ListTile(
                  title: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 5.0,
                    children: [
                      Icon(
                        listItems[i].icon,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      Text(
                        listItems[i].title,
                        style: const TextStyle(
                            color: Colors.blueAccent, fontSize: 20.0),
                      )
                    ],
                  ),
                );
              }); 
  }
}
