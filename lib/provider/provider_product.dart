import 'package:flutter/material.dart';
import 'package:state_management/provider/mainlist.dart';
// ignore: unused_import
import 'mainlist.dart';
// import 'mainlist.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
        id: '1',
        title: "shirt",
        discription: "i am shirt",
        price: 55.20,
        imgurl: 'https://picsum.photos/200/300'),
    Product(
        id: '2',
        title: "pant",
        discription: "i am pant",
        price: 55.20,
        imgurl: 'https://picsum.photos/200/300'),
    Product(
        id: '3',
        title: "shoes",
        discription: "i am shoes",
        price: 55.20,
        imgurl: 'https://picsum.photos/200/300'),
    Product(
        id: '4',
        title: "lorem",
        discription: "i am lorem",
        price: 55.20,
        imgurl: 'https://picsum.photos/200/300'),
  ];
  var showfavoutaesonly = false;

  List<Product> get items {
    if (showfavoutaesonly) {
      return _items.where((proditem) => proditem.isfavourite==true).toList();
    }
    return [..._items];
  }

  void showfavouritesonly() {
    showfavoutaesonly = true;
    notifyListeners();
  }

  void showall() {
    showfavoutaesonly = false;
    notifyListeners();
  }

// var show
  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addPrduct() {
    // _items.add(id);
    notifyListeners();
  }
}
