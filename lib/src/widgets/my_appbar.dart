import 'package:flutter/material.dart';

import '../utils/my_search_delegate.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          centerTitle: true,
          title: Text(
            'MARVEL',
            style: TextStyle(
                fontFamily: 'Marvel',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.white,
                backgroundColor: Colors.red[800],
                fontSize: 30),
          ),
          flexibleSpace: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background1.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Personajes Marvel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 35.0),
                  ),
                  const Divider(),
                  Container(                    
                    padding: const EdgeInsets.symmetric(horizontal: 25.0), 
                    child: const Text(
                      'Conoce todo sobre tus héroes y villanos de MARVEL',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  const Divider()
                ],
              )),
          actions: [
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                icon: const Icon(Icons.search)),
          ],
        );
  }
}