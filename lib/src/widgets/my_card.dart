import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String name, character, img;
  const MyCard({super.key, required this.name, required this.character, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:Container(    
        width: 200.0,            
        decoration: const BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0), topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(                  
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
                        image: DecorationImage(
                  image: NetworkImage(img),
                  fit: BoxFit.fill,
                ))),
              ),
              const Divider(
                color: Colors.redAccent,
              ),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Align(
                    alignment: Alignment.bottomLeft / 1.25,
                    child: Text(
                     character,
                      style: const TextStyle(color: Colors.white70),
                    )),
              )
            ],
          ),
      ),

    );
  }
}
