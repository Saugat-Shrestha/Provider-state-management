import 'package:flutter/material.dart';
import 'package:hello/Favorite/favourite_provider.dart';
import 'package:hello/Favorite/myFavourite.dart';
import 'package:provider/provider.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    print("hello");
    //  final select = Provider.of<favouriteprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
        actions: [
          InkWell(
            child: Icon(Icons.favorite),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyFavourite(),
                  ));
            },
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer<favouriteprovider>(
                    builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.selectedItem.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }
                    },
                    title: Text("item " + index.toString()),
                    trailing: value.selectedItem.contains(index)
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_outline),
                  );
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
