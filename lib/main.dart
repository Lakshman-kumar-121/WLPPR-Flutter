import 'package:flutter/material.dart';

import 'About.dart';
import 'Animal.dart';
import 'Birds.dart';
import 'Flower.dart';
import 'Wallpaper.dart';
import 'carsandbike.dart';
import 'games.dart';
import 'main_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var crimg = Colors.green[700];
  var currentPage = DrawerSections.flower;
  late int abc = 5;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.flower) {
      container = Flower();
      crimg = Colors.pinkAccent;
    } else if (currentPage == DrawerSections.games) {
      container = games();
      crimg = Colors.black87;
    } else if (currentPage == DrawerSections.animals) {
      container = Animal();
      crimg = Colors.deepOrangeAccent;
    } else if (currentPage == DrawerSections.nature) {
      container = Nature();
      crimg = Colors.green[700];
    } else if (currentPage == DrawerSections.birds) {
      container = Birds();
      crimg = Colors.blueAccent;
    } else if (currentPage == DrawerSections.about) {
      container = About();
      crimg = Colors.black54;
    } else if (currentPage == DrawerSections.Cars_Bike) {
      crimg = Colors.pink;
      container = carsandbike();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: crimg,
        title: Text("Wallpaper App"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(abc),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Flower", Icons.local_florist_rounded,
              currentPage == DrawerSections.flower ? true : false, 5),
          menuItem(2, "Games", Icons.videogame_asset,
              currentPage == DrawerSections.games ? true : false, 2),
          menuItem(3, "Animals", Icons.image,
              currentPage == DrawerSections.animals ? true : false, 4),
          menuItem(4, "Nature", Icons.animation,
              currentPage == DrawerSections.nature ? true : false, 1),
          menuItem(5, "Birds", Icons.grass_outlined,
              currentPage == DrawerSections.birds ? true : false, 3),
          menuItem(6, "Cars", Icons.directions_car_sharp,
              currentPage == DrawerSections.Cars_Bike ? true : false, 6),
          Divider(),
          menuItem(7, "About", Icons.info,
              currentPage == DrawerSections.about ? true : false, 7),
        ],
      ),
    );
  }

  Widget menuItem(
      int id, String title, IconData icon, bool selected, int image) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          abc = image;

          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.flower;
              MyHeaderDrawer(abc);
            } else if (id == 2) {
              currentPage = DrawerSections.games;
              MyHeaderDrawer(abc);
            } else if (id == 3) {
              currentPage = DrawerSections.animals;
              MyHeaderDrawer(abc);
            } else if (id == 4) {
              currentPage = DrawerSections.nature;
              MyHeaderDrawer(abc);
            } else if (id == 5) {
              currentPage = DrawerSections.birds;
              MyHeaderDrawer(abc);
            } else if (id == 6) {
              MyHeaderDrawer(abc);
              currentPage = DrawerSections.Cars_Bike;
            } else if (id == 7) {
              MyHeaderDrawer(abc);
              currentPage = DrawerSections.about;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  flower,
  nature,
  birds,
  games,
  animals,
  Cars_Bike,
  about,
  // send_feedback,
}
