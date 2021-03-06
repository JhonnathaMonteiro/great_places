import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:great_places/screens/add_places_screen.dart';
import 'package:great_places/providers/great_places.dart';

class PlacesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your places'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlacesScreen.routeName);
            },
          )
        ],
      ),
      body: Consumer<GreatePlaces>(
        child: Center(child: Text('Got not places yet, start adding some')),
        builder: (ctx, greatPlaces, ch) => greatPlaces.items.length <= 0
            ? ch
            : ListView.builder(
                itemCount: greatPlaces.items.length,
                itemBuilder: (BuildContext ctx, int i) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: FileImage(
                      greatPlaces.items[i].image,
                    ),
                  ),
                  title: Text(greatPlaces.items[i].title),
                  onTap: () {
                    // go to detail page
                  },
                ),
              ),
      ),
    );
  }
}
