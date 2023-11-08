import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Buscar por personaje...';

  List<String> suggestions = ['Capitan america', 'iron man', 'hulk'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    List<Widget> actions = [];

    actions.add(IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: const Icon(Icons.clear)));

    return actions;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> results = suggestions.where((element) {
      final result = element.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    if (results.isEmpty) {
      return Card(child: ListTile(title: Text('No existe')));
    } else {
      return ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  onTap: () {
                    query = results[index];
                  },
                  title: Text(results[index])));
        },
      );
    }
  }
}
