import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/mainlist.dart';
import 'package:state_management/provider/provider_product.dart';

import 'detailscreen.dart';

class ProductItem extends StatelessWidget {
  // const ProductItem({ Key? key }) : super(key: key);
  // final String id;
  // final String title;
  // final String imgurl;
  // ProductItem(this.id, this.title, this.imgurl);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context,listen: false);
    // final loadedPeoducts =
    // Provider.of<Products>(context, listen: false).findById(productid);
    return  GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: product.id);
        },
        child: GridTile(
          child: Image.network(
            product.imgurl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            leading: Consumer<Product>(
            builder: (ctx, product, child) => IconButton(
              icon: Icon(
                product.isfavourite ? Icons.favorite : Icons.favorite_border,
                color: Colors.orange,
              ),
              onPressed: () {
                product.toggleFavourate();
              },
            ),),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.orange,
              ),
              onPressed: () {},
            ),
          ),
        ),
      );
  }
}
