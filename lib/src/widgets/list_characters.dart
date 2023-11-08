import 'package:api_marvel/src/services/api_marvel.dart';
import 'package:api_marvel/src/widgets/my_card.dart';
import 'package:flutter/material.dart';

class ListCharacters extends StatelessWidget {
  const ListCharacters({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiMarvel().getCharacters(),
      builder: (context, AsyncSnapshot snap) {
        if (snap.hasData) {
          final data = snap.data['data']['results'] as List;          
           return Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                width: double.infinity,
                height: 350.0,
                child: ListView.builder(            
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context,i) {
                  return GestureDetector(
                    onTap: () {
                      print(i);
                    },
                    child: MyCard(img: "${data[i]['thumbnail']['path']}.${data[i]['thumbnail']['extension']}".toString(),character: data[i]['description'].toString(),  name: data[i]['name'].toString() ));
                }
                ),
              );
        }else{
          return const Center(child: CircularProgressIndicator());  
        }
       
      }
    );
  }
}