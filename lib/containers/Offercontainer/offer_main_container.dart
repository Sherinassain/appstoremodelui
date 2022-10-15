import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'first_offer_container.dart';

class Offer_main_container extends StatelessWidget {
  const Offer_main_container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
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
                'Offers for games you might like',
                style: TextStyle(
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
                            'https://miro.medium.com/max/1200/1*mGyxMM5fssJ5IzRw9fwv5A.jpeg',
                        secondimagepath:
                            'https://www.pinkvilla.com/files/styles/amp_metadata_content_image/public/now_gta_trilogy_definitive_edition_pc_owners_can_get_another_free_game_from_rockstar.jpg',
                        title: 'GTA games',
                        description: 'Racing',
                        rating: '4.6'),
                    //2
                     First_offer_container(
                        firstimagepath:
                            'https://st1.bgr.in/wp-content/uploads/2022/03/Vi-Games.jpg',
                        secondimagepath:
                            'https://www.myvi.in/content/dam/vodafoneideadigital/vigame/vi-games.png',
                        title: 'NFS',
                        description: 'Racing',
                        rating: '4.8'),
                    //3
                     First_offer_container(
                        firstimagepath:
                            'https://www.khelplayrummy.com/blog/wp-content/uploads/2017/12/big-bonus-offer-banner.jpg',
                        secondimagepath:
                            'https://play-lh.googleusercontent.com/uwAh1c_GAjvyhl_r-68S6mlxbQ1-hwK8cjy27QQQlDwGG5sEetYIfIcPWLkfS_VoO4Ee',
                        title: 'Rummy',
                        description: 'Casual game',
                        rating: '4.3'),
                    //4
                     First_offer_container(
                        firstimagepath:
                            'https://www.gizmochina.com/wp-content/uploads/2019/10/pubg-mobile-diwali-dhamaka.jpg',
                        secondimagepath:
                            'https://media.contentapi.ea.com/content/dam/gin/images/2019/08/nsfh-keyart-gin.jpg.adapt.crop1x1.767p.jpg',
                        title: 'Need for speed',
                        description: 'Racing',
                        rating: '4.2'),
                    //5
                     First_offer_container(
                        firstimagepath:
                            'https://staticc.sportskeeda.com/editor/2022/08/48214-16613673656825-1920.jpg',
                        secondimagepath:
                            'https://assets-prd.ignimgs.com/2022/01/07/gta-san-andreas-collage-button2-1641589094079.jpg?width=300&crop=1%3A1%2Csmart',
                        title: 'Vice city',
                        description: 'Casual games',
                        rating: '4.5'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
