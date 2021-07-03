import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/provider_product.dart';

class ProductDetailScreen extends StatelessWidget {
  // const ProductDetailScreen({ Key? key }) : super(key: key);
  static const routeName = '/product-detail';
  // final String id;
  // final String title;
  // // final String discription;

  // final double price;
  // ProductDetailScreen(this.id, this.title, this.price);
  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context)!.settings.arguments as String;
    final loadedPeoducts = Provider.of<Products>(context,listen: false).findById(productid);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedPeoducts.title),
      ),
      body: Text(loadedPeoducts.discription, style: TextStyle(fontSize: 20)),

      // floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
    //https://picsum.photos/200/300;
  }
}
