//https://picsum.photos/200/300   // ⌘ ñ
//use lint
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:state_management/provider/provider_product.dart';
import '../widget/detailscreen.dart';
import 'page1.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'this is home page',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}

enum Filteroptions {
  Favoutites,
  All,
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final productContainer = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('app bar'),
        // actions: [],
        actions: [
          // IconButton(
          //   icon: Icon(Icons.search),
          //   tooltip: 'search',
          //   onPressed: () {},
          // ),
          PopupMenuButton(
              onSelected: (Filteroptions selectedvalue) {
                if (selectedvalue == Filteroptions.Favoutites) {
                  productContainer.showfavouritesonly();
                }else{

                  productContainer.showall();
                }
              },
              elevation: 20,
              icon: Icon(Icons.more_vert),
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text('favourates'),
                      value: Filteroptions.Favoutites,
                    ),
                    PopupMenuItem(
                      child: Text('show all'),
                      value: Filteroptions.All,
                      // value: 1,
                    ),
                  ])
        ],
      ),
      backgroundColor: Colors.black54,
      body: Page1(),
      drawer: Drawer(),
    );
  }
}
