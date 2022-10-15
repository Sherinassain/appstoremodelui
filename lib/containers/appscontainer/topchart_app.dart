import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Top_chartsapp extends StatelessWidget {
  final String imagepath;
  final String title;
  final String subtitle;
  final String subpurpose;
  final String rating;
  final String mborprice;
  final height;
  final width;
  final double bradius;
  const Top_chartsapp(
      {Key? key,
      required this.imagepath,
      required this.height,
      required this.width,
      required this.title,
      required this.subtitle,
      this.subpurpose = '',
      required this.bradius,
      required this.rating,
      required this.mborprice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: screensize.width * width,
            height: screensize.width * height,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: NetworkImage(imagepath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(bradius)),
          ),
          SizedBox(
            width: screensize.width * 0.08,
          ),
          Container(
            width: screensize.width * 0.65,
            height: screensize.width * 0.18,
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screensize.width * 0.01,
                ),
                Text(
                  '${subtitle} . ${subpurpose}',
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screensize.width * 0.01,
                ),
                Row(
                  children: [
                    Text(
                      rating,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: screensize.width * 0.02,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Text(
                      '${mborprice}',
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
