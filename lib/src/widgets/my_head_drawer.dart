import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
            margin: EdgeInsets.all(0),            
            decoration: BoxDecoration(
              color: Colors.blueGrey              
              ),            
              child: Align(
                alignment: Alignment.center,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 5.0, children: [
                          Icon(Icons.web_stories, color: Colors.white,),
                          Text(
                'Otro personajes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0
                ),
                          ),
                        ]),
              ),
          );
  }
}