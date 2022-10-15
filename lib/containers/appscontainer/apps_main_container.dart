import 'package:appstore/containers/appscontainer/apps_first_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class App_main_container extends StatelessWidget {
  final String maintitle;

  const App_main_container({
    Key? key,
    required this.maintitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: screensize.width * 0.57,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    maintitle,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.white54,
                  )
                ],
              ),
              SizedBox(
                height: screensize.width * 0.03,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const[
                     Apps_first_container(
                        appimage:
                            'https://play-lh.googleusercontent.com/z5YSgrDgdBbVQejCzipNpUkLnRLYVUrHDLFpe4ZDz9lLZ-dM0XaUaYyv2X9gwzV-iEU',
                        title: 'Link to Windows',
                        rating: '4.3'),
                    //2
                     Apps_first_container(
                        appimage:
                            'https://static.startuptalky.com/2021/07/zomato-success-story-startuptalky.jpg',
                        title: 'Zomato',
                        rating: '4.0'),
                    //3
                     Apps_first_container(
                        appimage:
                            'https://play-lh.googleusercontent.com/A8jF58KO1y2uHPBUaaHbs9zSvPHoS1FrMdrg8jooV9ftDidkOhnKNWacfPhjKae1IA',
                        title: 'Swiggy',
                        rating: '4.8'),
                    //4
                     Apps_first_container(
                        appimage:
                            'https://yt3.ggpht.com/ytc/AMLnZu_ShCS6KsHvKJJUaKWD1d_9aOV0yOW1PRkbNMEsyw=s900-c-k-c0x00ffffff-no-rj',
                        title: 'Amazon',
                        rating: '4.2'),
                    //5
                     Apps_first_container(
                        appimage:
                            'https://play-lh.googleusercontent.com/q8hxnbpJCYfHipSOG_5tZe5jK_89T6QIsqrEklvGpMFKH8b98pDHJf2tPcn2bxEN96ON=w240-h480-rw',
                        title: 'Flipkart',
                        rating: '4.5'),
                    //6
                     Apps_first_container(
                        appimage:
                            'https://www.deccanherald.com/sites/dh/files/styles/article_detail/public/articleimages/2022/03/30/google-pay-crs-1-1096059-1648632689.jpg?itok=Nt6gBe2W',
                        title: 'Google Pay',
                        rating: '4.1'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
