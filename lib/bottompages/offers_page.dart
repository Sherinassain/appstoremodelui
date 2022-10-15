import 'package:appstore/containers/Offercontainer/first_offer_container.dart';
import 'package:appstore/containers/Offercontainer/offer_main_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Offers_page extends StatelessWidget {
  const Offers_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: screensize.height * 0.53,
                        decoration: const BoxDecoration(color: Colors.transparent),
                        child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 7, left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screensize.width * 0.04,
                                ),
                                const Text(
                                  'Offers for apps you might like',
                                  style:  TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                                SizedBox(
                                  height: screensize.width * 0.02,
                                ),
                                Expanded(
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children:const [
                                      //1
                                       First_offer_container(
                                          firstimagepath:
                                              'https://cdn2.vectorstock.com/i/1000x1000/69/96/mega-sale-advertising-banner-one-day-special-offer-vector-18746996.jpg',
                                          secondimagepath:
                                              'https://play-lh.googleusercontent.com/F8GhJVX4u3O-D3_lV3wi9Xf_NOEB3hdOpSS6626F1xl9Gl1CI2BF5BA9NdeJ4b0FgsDW',
                                          title:
                                              'Flights Booking & Cheap Flights',
                                          description: 'Travel & Local',
                                          rating: '4.6'),
                                      //2
                                       First_offer_container(
                                          firstimagepath:
                                              'https://i.ytimg.com/vi/Hu1lXeLqU7c/maxresdefault.jpg',
                                          secondimagepath:
                                              'https://play-lh.googleusercontent.com/A8jF58KO1y2uHPBUaaHbs9zSvPHoS1FrMdrg8jooV9ftDidkOhnKNWacfPhjKae1IA',
                                          title: 'Swiggy',
                                          description: 'Foods',
                                          rating: '4.8'),
                                      //3
                                       First_offer_container(
                                          firstimagepath:
                                              'https://www.easemytrip.com/images/bus-img/bus10-30apr-sm.png',
                                          secondimagepath:
                                              'https://play-lh.googleusercontent.com/z5YSgrDgdBbVQejCzipNpUkLnRLYVUrHDLFpe4ZDz9lLZ-dM0XaUaYyv2X9gwzV-iEU',
                                          title: 'Link to Windows',
                                          description: 'Office Purpose',
                                          rating: '4.3'),
                                      //4
                                       First_offer_container(
                                          firstimagepath:
                                              'https://static.lenskart.com/images/cust_mailer/25-May-LK-Page/PayBack_08.jpg',
                                          secondimagepath:
                                              'https://yt3.ggpht.com/ytc/AMLnZu_ShCS6KsHvKJJUaKWD1d_9aOV0yOW1PRkbNMEsyw=s900-c-k-c0x00ffffff-no-rj',
                                          title: 'Amazon',
                                          description: 'Shopping',
                                          rating: '4.2'),
                                      //5
                                       First_offer_container(
                                          firstimagepath:
                                              'https://www.dealsshutter.com/uploads/social_images/stores/swiggy-coupons-social-image-final-1621831150.jpg',
                                          secondimagepath:
                                              'https://play-lh.googleusercontent.com/q8hxnbpJCYfHipSOG_5tZe5jK_89T6QIsqrEklvGpMFKH8b98pDHJf2tPcn2bxEN96ON=w240-h480-rw',
                                          title: 'Flipkart',
                                          description: 'Shopping',
                                          rating: '4.5'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Offer_main_container(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
