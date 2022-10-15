import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Apps_first_container extends StatelessWidget {
  final String appimage;
  final String title;
  final String rating;
  const Apps_first_container(
      {Key? key,
      required this.appimage,
      required this.title,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        //main
        children: [
          Container(
            width: screensize.width * 0.25,
            height: screensize.width * 0.25,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: NetworkImage(appimage), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            height: screensize.width * 0.02,
          ),
          Container(
            width: screensize.width * 0.25,
            height: screensize.width * 0.15,
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
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
                          fontSize: 13,
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
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
