import 'package:ammshop/data/dummydata.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AMM'),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (ctx, index) {
            return Card(
              child: Column(
                children: [
                  Image.network(itemlist[index].imageurl),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(itemlist[index].name),
                      Text('$itemlist[index].amount'),
                    ],
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
                ],
              ),
            );
          }),
    );
  }
}
