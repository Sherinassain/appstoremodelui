import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'install_container.dart';

class Thrid_container extends StatelessWidget {
  final String firstimagepath;
  final String secondimagepath;
  final String title;
  final String mb;
  final String rating;
  final String subtitle;

  const Thrid_container(
      {Key? key,
      required this.subtitle,
      required this.rating,
      required this.firstimagepath,
      required this.mb,
      required this.secondimagepath,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: screensize.width * 0.57,
            height: screensize.width * 0.3,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(
                    image: NetworkImage(firstimagepath), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: screensize.width * 0.01,
          ),
          Install_container(
              isubtitle: subtitle,
              imb: mb,
              irating: rating,
              isecondimagepath: secondimagepath,
              ititle: title)
        ],
      ),
    );
  }
}
