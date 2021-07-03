import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/product_item.dart';
// ignore: unused_import
import '../provider/mainlist.dart';
import 'provider/provider_product.dart';

class Page1 extends StatelessWidget {
  // const Page1({ Key? key }) : super(key: key);
  // List<Product> products = [
  //   ;

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, index) => ChangeNotifierProvider(
          create: (c) => products[index],
          child: ProductItem(),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
      ),
    );
  }
}
