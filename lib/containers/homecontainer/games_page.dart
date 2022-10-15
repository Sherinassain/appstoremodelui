import 'package:appstore/containers/homecontainer/second_app_containers.dart';
import 'package:appstore/containers/homecontainer/thrid_item_container.dart';
import 'package:appstore/containers/homecontainer/top_first_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../appscontainer/topchart_app.dart';

class Bottom_nav extends StatelessWidget {
  const Bottom_nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const TextField(
                decoration:  InputDecoration(
                    hintText: 'Search for apps & ...',
                    hintStyle: TextStyle(
                        color: Colors.white54, fontWeight: FontWeight.bold),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.white54,
                      size: 26,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white54,
                    ),
                    fillColor: Colors.white12,
                    filled: true,
                    border: InputBorder.none),
              ),
            ),
            bottom: TabBar(
                indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                indicatorColor: Colors.white,
                labelColor: Colors.black,
                isScrollable: false,
                indicatorSize: TabBarIndicatorSize.tab,
                unselectedLabelColor: Colors.white,
                tabs:const [
                   Tab(
                    text: 'For you',
                  ),
                   Tab(
                    text: 'Top charts',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            Games_first_tab(),
            Games_second_tab(),
          ])),
    );
  }
}

class Games_first_tab extends StatelessWidget {
  const Games_first_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screensize.width * 0.04,
              ),
              const Text(
                'Town Hall 15 has arrived',
                style:  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(
                height: screensize.width * 0.04,
              ),
              Container(
                width: screensize.width * 0.9,
                height: screensize.width * 0.6,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CarouselSlider(
                      items: const[
                         Top_first_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrdRWFl0W0iZfmOIWeCAHHJoWRPUMn2Qg5yA&usqp=CAU',
                        ),
                         Top_first_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN70bsa5NijGZektcXsM8g6azqQF3lNRHKnA&usqp=CAU',
                        ),
                         Top_first_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaTAVLwGxvUcN4Y0CMD5UWx1mc_oM4q89qR39Ip_AR-OfFq1-x-tj1s3dtYtJ0b_emNl8&usqp=CAU',
                        ),
                         Top_first_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrdRWFl0W0iZfmOIWeCAHHJoWRPUMn2Qg5yA&usqp=CAU',
                        ),
                         Top_first_container(
                          imagepath:
                              'https://lumiere-a.akamaihd.net/v1/images/usa_gotg_fgt_defendgalaxy_n_59a53855.jpeg?region=0%2C0%2C634%2C357',
                        ),
                         Top_first_container(
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQk4qHd74zv-z7Dl2ZRo5_PXlbRaSI9FaZPmr4MjqzzfZTYXhbFzXW502h0mTXRHeTqS_c&usqp=CAU',
                        ),
                      ],
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                        viewportFraction: 0.99,
                        autoPlayInterval: const Duration(seconds: 3),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screensize.width * 0.02,
              ),

              //items
              Second_app_containers(
                width: screensize.width * 1,
                height: screensize.width * 0.23,
              ),

              SizedBox(
                height: screensize.width * 0.04,
              ),
              Row(
                children:const [
                   Text(
                    'Ads . ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                   Text(
                    'Suggested for you',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                height: screensize.width * 0.04,
              ),
              //second Items
              Container(
                width: double.infinity,
                height: screensize.width * 0.6,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const[
                     Thrid_container(
                        subtitle: 'Strategy',
                        rating: '4.5',
                        firstimagepath:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVuq9XTwqhIk0t83BjO_HMbQyB6l2_q21tqg&usqp=CAU',
                        mb: '263 MB',
                        secondimagepath:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUF7MA9LqyXDVBypZfhAi8SAvS6J6vjd6gAtws8ooe0EMSQDW3cGSubTC1qaQRU0_uT6E&usqp=CAU',
                        title: 'Clash of Clans'),
                    //2
                     Thrid_container(
                        subtitle: 'Casual',
                        rating: '4.4',
                        firstimagepath:
                            'https://cdn.vox-cdn.com/thumbor/5QslyXdJvRPGiwQLAVAQoQSAXWs=/0x0:1100x688/1400x1050/filters:focal(550x344:551x345)/cdn.vox-cdn.com/assets/3299927/candy.jpg',
                        mb: '77 MB',
                        secondimagepath:
                            'https://www.wizcase.com/wp-content/uploads/2020/10/candy-crush-saga-logo1.jpg',
                        title: 'Candy Crush'),
                    //3
                     Thrid_container(
                        subtitle: 'Board . Chess',
                        rating: '4.1',
                        firstimagepath:
                            'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/chess-tournament%2Cchess-design-template-ab21b22b5d990399ec65a131cd4d9e57.jpg?ts=1591710059',
                        mb: '94 MB',
                        secondimagepath:
                            'https://img.freepik.com/premium-vector/poster-banner-design-chess-competition_1302-12581.jpg?w=2000',
                        title: 'Chess Royale'),
                    //4
                     Thrid_container(
                        subtitle: 'Racing . Arcade',
                        rating: '4.1',
                        firstimagepath:
                            'https://cdn.akamai.steamstatic.com/steam/apps/1815780/capsule_616x353.jpg?t=1659434785',
                        mb: '2.3 GB',
                        secondimagepath:
                            'https://upload.wikimedia.org/wikipedia/en/6/6c/Asphalt_9_-_Legends_logo.png',
                        title: 'Asphalt 9'),
                    //5
                     Thrid_container(
                        subtitle: 'Casual',
                        rating: '4.4',
                        firstimagepath:
                            'https://i.ytimg.com/vi/i02ZKPRRAlE/maxresdefault.jpg',
                        mb: '126 MB',
                        secondimagepath:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJB8u2T9y5dv6DRdMCs-uHQjCt9eaCigKhCiK6mTIpKVWenFUfBGRg0Ii6wtbN06vRANk&usqp=CAU',
                        title: 'Township'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

class Games_second_tab extends StatelessWidget {
  const Games_second_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Expanded(
            child: Column(
              children: [
                const Text(
                  'Top Games',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  height: screensize.width * 0.04,
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children:const [
                      //1
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://upload.wikimedia.org/wikipedia/en/a/a5/Grand_Theft_Auto_V.png',
                        title: 'Gta Vicecity',
                        subtitle: 'Rockstar Games',
                        rating: '4.6',
                        mborprice: ' 1.36 GB',
                      ),
                      //2
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://upload.wikimedia.org/wikipedia/en/8/8e/Need_for_Speed_Most_Wanted_Box_Art.jpg',
                        title: 'Need for speed',
                        subtitle: 'Electronic Arts',
                        rating: '4.2',
                        mborprice: '780 MB',
                      ),
                      //3
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://cdn.pocket-lint.com/r/s/1201x/assets/images/144028-games-feature-pubg-image1-zkpdntqgbc.jpg',
                        title: 'PUBG',
                        subtitle: 'Action',
                        rating: '4.8',
                        mborprice: '1.76 GB',
                      ),
                      //4
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://play-lh.googleusercontent.com/RC551IFqJwz5ymg_h1eizSLyKUaJc-HCAxI5OzXZgQGY03_9mOP_1VFNdx8u7QnGOTnh',
                        title: 'Fifa',
                        subtitle: 'Sports',
                        rating: '4.1',
                        mborprice: '1.02 GB',
                      ),
                      //5
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://play-lh.googleusercontent.com/Eqdw8K2j0omxE__qDhD6cz0tF9HeB6HyY9GmhK3fXADdTo5_yi_-9z0YzkUfsED0Pw',
                        title: 'Subway surfers',
                        subtitle: 'SYBO Games',
                        rating: '4.8',
                        mborprice: '379 MB',
                      ),
                      //6
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://img.poki.com/cdn-cgi/image/quality=78,width=314,height=314,fit=cover,f=auto/f4b3ac7fe25cad9bc028b33f7a407f28.png',
                        title: 'Temple run',
                        subtitle: 'Action',
                        subpurpose: '',
                        rating: '3.9',
                        mborprice: '485 MB',
                      ),
                      //7
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://play-lh.googleusercontent.com/ffGx9o8K6RI7DJuADt95JiyhhU74jqbvm1h8QRb6yoI67bL17Q23xVmZw79N-u9URHA',
                        title: 'Minimilitia',
                        subtitle: 'Action',
                        rating: '4.3',
                        mborprice: '130 MB',
                      ),
                      //8
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://store-images.s-microsoft.com/image/apps.27192.9007199266379485.c1ef97c5-cf2f-4dbd-840d-c4c975f1b009.4c147b04-721a-4ac1-b7e9-151ad255f3f3',
                        title: 'Hill Climb Racing',
                        subtitle: 'Fingersoft',
                        rating: '4.0',
                        mborprice: '286 MB',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
