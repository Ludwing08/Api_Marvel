import 'package:api_marvel/src/widgets/list_characters.dart';
import 'package:api_marvel/src/widgets/my_appbar.dart';
import 'package:api_marvel/src/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        shadowColor: Colors.white,
        child: MyDrawer(),
      ),
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250.0), child: MyAppBar()),
      body: Stack(  
        alignment: Alignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),              
          decoration: const BoxDecoration(          
            image: DecorationImage(
                image: AssetImage('assets/images/background2.png'),
                fit: BoxFit.fill),
                ),
          ),

          ListCharacters()
        ],    
      )           
      );    
  }
}
