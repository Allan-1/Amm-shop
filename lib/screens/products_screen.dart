import 'package:ammshop/data/dummydata.dart';
import 'package:ammshop/widgets/product_grid.dart';
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
        body: const ProductGrid());
  }
}
