import 'package:appstore/containers/appscontainer/topchart_app.dart';
import 'package:appstore/containers/bookscontainer/book_list_container.dart';
import 'package:appstore/containers/bookscontainer/main_books_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Books_page extends StatelessWidget {
  const Books_page({Key? key}) : super(key: key);

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
                decoration:  InputDecoration(
                    hintText: 'Search for Books',
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
             Book_first_tab(),
             Books_second_tab(),
          ])),
    );
  }
}

class Book_first_tab extends StatelessWidget {
  const Book_first_tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                //item colum
                Column(
                  children: [
                    SizedBox(
                      height: screensize.width * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                         Text(
                          'Fall for these romantic ebooks',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                         Icon(
                          Icons.arrow_forward,
                          color: Colors.white54,
                        )
                      ],
                    ),
                    SizedBox(
                      height: screensize.width * 0.02,
                    ),
                    Container(
                        width: double.infinity,
                        height: screensize.width * 0.63,
                        decoration: const BoxDecoration(color: Colors.transparent),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:const [
                            //1
                             book_list_container(
                                imagepath:
                                    'https://m.media-amazon.com/images/I/51Puh9yUqtL.jpg',
                                title: "World's Best short stories",
                                rating: '4.3',
                                amount: '103'),
                            //2
                             book_list_container(
                                imagepath:
                                    'https://m.media-amazon.com/images/I/51xuANdpEYL.jpg',
                                title: "Ginny baird",
                                rating: '4.5',
                                amount: '170'),
                            //3
                             book_list_container(
                                imagepath:
                                    'https://m.media-amazon.com/images/I/51MicQZzKEL.jpg',
                                title: "Love story",
                                rating: '3.9',
                                amount: '249'),
                            //4
                             book_list_container(
                                imagepath:
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjdqwcn4m0trx0OSAVDiOw8Fxl8RafjSgt8w&usqp=CAU',
                                title: "The duke",
                                rating: '3.8',
                                amount: '149'),
                          ],
                        ))
                  ],
                ),
                const Main_books_container(
                  title: 'Top selling comics',
                ),
                const Main_books_container(title: 'Sci-fi & fantasy ebooks'),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class Books_second_tab extends StatelessWidget {
  const Books_second_tab({Key? key}) : super(key: key);

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
                  'Top Books',
                  style:  TextStyle(
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
                          bradius: 8,
                          imagepath:
                              'https://m.media-amazon.com/images/I/51FiPTWjtPL._SX342_SY445_QL70_ML2_.jpg',
                          height: 0.25,
                          width: 0.18,
                          title: 'Book ranking',
                          subtitle: 'Amazon books',
                          rating: '3.6',
                          mborprice: '\$75'),
                      //2
                       Top_chartsapp(
                          bradius: 8,
                          imagepath:
                              'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1462709894l/2623267.jpg',
                          height: 0.25,
                          width: 0.18,
                          title: 'Kasakinde ithihasam',
                          subtitle: 'Novel',
                          rating: '4.0',
                          mborprice: '\$35'),
                      //3
                       Top_chartsapp(
                          bradius: 8,
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR26Zi3xQyK1d63DXewq55xE3WhYNo6doVKggIAHwFOmikzIj4x7yoEirDqL1PNd3Kryo4&usqp=CAU',
                          height: 0.25,
                          width: 0.18,
                          title: 'Niruupakante Vayana',
                          subtitle: 'Story',
                          rating: '3.5',
                          mborprice: '\$25'),
                      //4
                       Top_chartsapp(
                          bradius: 8,
                          imagepath:
                              'https://rukminim1.flixcart.com/image/612/612/k9stjm80/book/2/9/8/panchathanthram-original-imafrgeghsgwdzvy.jpeg?q=70',
                          height: 0.25,
                          width: 0.18,
                          title: 'Panchathanthram',
                          subtitle: 'Story',
                          rating: '3.4',
                          mborprice: '\$95'),
                      //5
                       Top_chartsapp(
                          bradius: 8,
                          imagepath:
                              'https://m.media-amazon.com/images/I/51Tl8gvxtGL.jpg',
                          height: 0.25,
                          width: 0.18,
                          title: 'Fossil',
                          subtitle: 'Story',
                          rating: '4.5',
                          mborprice: '\$30'),
                      //6
                       Top_chartsapp(
                          bradius: 8,
                          imagepath:
                              'https://5.imimg.com/data5/ANDROID/Default/2021/8/DF/XA/NN/34457868/product-jpeg-500x500.jpg',
                          height: 0.25,
                          width: 0.18,
                          title: 'Kids story',
                          subtitle: 'Amazon books',
                          rating: '34.2',
                          mborprice: '\$65'),
                      //7
                       Top_chartsapp(
                          bradius: 8,
                          imagepath:
                              'https://i.pinimg.com/236x/88/9a/bd/889abd654cc9e532ac68c732c6bf26c1.jpg',
                          height: 0.25,
                          width: 0.18,
                          title: 'Madhavikkutty',
                          subtitle: 'Autobiography',
                          rating: '4.6',
                          mborprice: '\$38'),
                      //8
                       Top_chartsapp(
                          bradius: 8,
                          imagepath:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMZQMZK-cj-nTJRTqMAsKvpamzIh92jVW5Aw&usqp=CAU',
                          height: 0.25,
                          width: 0.18,
                          title: 'Kids Stories',
                          subtitle: 'Pentex publications',
                          rating: '4.6',
                          mborprice: '\$55'),
                      //9
                       Top_chartsapp(
                          bradius: 8,
                          imagepath:
                              'https://yuvathabooks.in/wp-content/uploads/2021/10/Dampathyam-front-page.jpg',
                          height: 0.25,
                          width: 0.18,
                          title: 'Shishiram',
                          subtitle: 'Novel',
                          rating: '5.3',
                          mborprice: '\$53'),
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
