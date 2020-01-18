import 'package:flutter/material.dart';
import 'package:lojavirtual/Tabs/products_tab.dart';
import 'package:lojavirtual/Widgets/custom_drawer.dart';
import 'package:lojavirtual/Tabs/home_tab.dart';

class HomeScreen extends StatelessWidget {

  final pageControler = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageControler,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(pageControler),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(pageControler),
          body: ProductsTab(),
        )
      ],
    );
  }
}
