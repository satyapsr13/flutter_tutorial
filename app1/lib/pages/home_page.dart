// import 'package:flutter/cupertino.dart';
import 'package:app1/modals/catalog.dart';
import 'package:app1/widgets/item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';//
import 'package:flutter/src/widgets/scroll_view.dart';
import 'dart:convert';//to decode and encode data

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson =
        await rootBundle.loadString("../assets/files/catalog.json");
    // print(catalogJson);
    var decodedJson = jsonDecode(catalogJson);
    // print(decodedJson);
    var productData = decodedJson["products"];
    Catalogmodel.item =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  Widget build(BuildContext context) {
    // final dummylist = List.generate(20, (index) => Catalogmodel.item[1]);
    var age = 34;
    return Scaffold(
      appBar: AppBar(
        title: Text('i am $age'),
      ),

      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: (Catalogmodel.item != Null && Catalogmodel.item.isNotEmpty)?ListView.builder(
          itemCount: Catalogmodel.item.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: Catalogmodel.item[index],
            );
          },
        ):Center(child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
