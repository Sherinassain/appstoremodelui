import 'package:appstore/bottompages/apps_page.dart';
import 'package:appstore/bottompages/books_page.dart';
import 'package:appstore/bottompages/offers_page.dart';
import 'package:appstore/containers/homecontainer/games_page.dart';
import 'package:appstore/containers/homecontainer/install_container.dart';
import 'package:appstore/containers/homecontainer/second_app_containers.dart';
import 'package:appstore/containers/homecontainer/thrid_item_container.dart';
import 'package:appstore/containers/homecontainer/top_first_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_page extends StatefulWidget {
  Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  final List pages = [
    const Bottom_nav(),
    const Apps_page(),
    const Offers_page(),
    const Books_page(),
  ];
  int _selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            
              canvasColor: Colors.black,
             
              primaryColor: Colors.black,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          child: BottomNavigationBar(
              backgroundColor: Colors.black,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              currentIndex: _selectedindex,
              onTap: (value) {
                setState(() {
                  _selectedindex = value;
                });
              },
              items: const[
                 BottomNavigationBarItem(
                  icon:  ImageIcon(
                    AssetImage(
                      'assets/mgame.png',
                    ),
                  ),
                  label: 'Games',
                ),
                 BottomNavigationBarItem(
                    icon:  ImageIcon(
                      AssetImage('assets/mapps.png'),
                    ),
                    label: 'Apps'),
                 BottomNavigationBarItem(
                    icon:  ImageIcon(
                      AssetImage('assets/mtag.png'),
                    ),
                    label: 'Offers'),
                 BottomNavigationBarItem(
                    icon:  ImageIcon(
                      AssetImage('assets/mbook.png'),
                    ),
                    label: 'Books')
              ]),
        ),
    
        body: pages[_selectedindex]);
  }
}
