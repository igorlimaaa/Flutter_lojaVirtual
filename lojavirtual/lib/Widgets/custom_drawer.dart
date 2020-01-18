import 'package:flutter/material.dart';
import 'package:lojavirtual/Tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  CustomDrawer(this.pageController);

  Widget _buidlDrawerBack() => Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 211, 118, 130),
              Colors.white
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        )
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          _buidlDrawerBack(),
          ListView(
            padding: EdgeInsets.only(left: 32.0, top: 16.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 0.0,
                      child: Text("Flutter\nClothing", style:
                        TextStyle(
                          fontSize: 34.0, fontWeight: FontWeight.bold
                        ),),
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Olá,",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),),
                          GestureDetector(
                            child: Text("Entre ou cadastra-se",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor
                              ),),
                            onTap: (){

                            },
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.cloud, "Início", pageController, 0),
              DrawerTile(Icons.data_usage, "Produtos", pageController, 1),
            ],
          )
        ],
      ),
    );
  }
}
