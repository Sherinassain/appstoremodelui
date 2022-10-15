import 'package:appstore/containers/appscontainer/apps_main_container.dart';
import 'package:appstore/containers/appscontainer/topchart_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../containers/appscontainer/apps_first_container.dart';

class Apps_page extends StatelessWidget {
  const Apps_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const TextField(
                decoration: InputDecoration(
                    hintText: 'Search for apps & ...',
                    hintStyle: TextStyle(
                        color: Colors.white54, fontWeight: FontWeight.bold),
                    suffixIcon:  Icon(
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
                tabs: const[
                   Tab(
                    text: 'For you',
                  ),
                   Tab(
                    text: 'Top charts',
                  ),
                ]),
          ),
          body: const TabBarView(children: [
            App_first_tab(),
            Apps_second_tab(),
          ])),
    );
  }
}

class App_first_tab extends StatelessWidget {
  const App_first_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      child: Expanded(
        child: Column(
          children: [
            //apps main container
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children:const [
                   App_main_container(maintitle: 'Recommended for you'),
                   App_main_container(maintitle: 'Ads . Suggested for you'),
                   App_main_container(
                      maintitle: 'Based on your recent activity'),
                   App_main_container(maintitle: 'Productivity'),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class Apps_second_tab extends StatelessWidget {
  const Apps_second_tab({Key? key}) : super(key: key);

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
                  'Top Apps',
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
                    children: const[
                      //1
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://play-lh.googleusercontent.com/z5YSgrDgdBbVQejCzipNpUkLnRLYVUrHDLFpe4ZDz9lLZ-dM0XaUaYyv2X9gwzV-iEU',
                        title: 'Link to Windows',
                        subtitle: 'Connectivity',
                        subpurpose: 'Office',
                        rating: '4.3',
                        mborprice: '13 MB',
                      ),
                      //2
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://play-lh.googleusercontent.com/3yi7Fo-OtJUZ7nAlB8WB0v1WTOdz76Z1kqvuuubhNlHzU9jhP97TnI-6eVThWZMV31A',
                        title: 'Meesho online shopping',
                        subtitle: 'Shopping',
                        subpurpose: 'marketing',
                        rating: '4.4',
                        mborprice: '70 MB',
                      ),
                      //3
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/600px-Instagram-Icon.png?20190314235631',
                        title: 'instagram',
                        subtitle: 'Social',
                        subpurpose: 'Networking',
                        rating: '4.8',
                        mborprice: '63 MB',
                      ),
                      //4
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://pbs.twimg.com/profile_images/1471625412182687760/B5CsS8mK_400x400.jpg',
                        title: 'Snapchat',
                        subtitle: 'Communication',
                        subpurpose: 'Social',
                        rating: '4.1',
                        mborprice: '53 MB',
                      ),
                      //5
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://yt3.ggpht.com/ytc/AMLnZu9jLCW8MVoU91uUbr-58HBaGd1sekK-czCiXhy5gQ=s900-c-k-c0x00ffffff-no-rj',
                        title: 'PhonePe',
                        subtitle: 'Finance',
                        subpurpose: 'Digital wallets',
                        rating: '4.2',
                        mborprice: '37 MB',
                      ),
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://assets.mofoprod.net/network/images/whatsapp_logo.original.jpg',
                        title: 'Whatsapp',
                        subtitle: 'Communication',
                        subpurpose: '',
                        rating: '4.2',
                        mborprice: '48 MB',
                      ),
                      //7
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://images.news18.com/ibnlive/uploads/2020/12/1606989176_sbi-yono.jpg?im=FitAndFill,width=1200,height=1200',
                        title: 'Yono sbi',
                        subtitle: 'Finance',
                        subpurpose: 'Banking',
                        rating: '4.3',
                        mborprice: '65 MB',
                      ),
                      //8
                       Top_chartsapp(
                        bradius: 20,
                        width: 0.18,
                        height: 0.18,
                        imagepath:
                            'https://play-lh.googleusercontent.com/qdZCF_aTAZXZtFX3wcUEYNb-cr_KB6KCFf5LgiAW0FP9k3hwI8UyzhTTGquks5ws-GA',
                        title: 'FedMobile',
                        subtitle: 'Banking',
                        subpurpose: 'Finance',
                        rating: '3.9',
                        mborprice: '28 MB',
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
