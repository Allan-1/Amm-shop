import 'package:ammshop/data/dummydata.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.5),
      itemBuilder: (ctx, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: GridTile(
            child: GestureDetector(
                onTap: () {},
                child: Image.network(
                  itemlist[index].imageurl,
                  fit: BoxFit.cover,
                )),
            header: GridTileBar(
              backgroundColor: Colors.white54,
              leading: Text(itemlist[index].name),
              trailing: Text(itemlist[index].amount.toString()),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black54,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ),
          ),
        );
      },
      padding: const EdgeInsets.all(10),
      itemCount: itemlist.length,
    );
  }
}
