import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class book_list_container extends StatelessWidget {
  final String imagepath;
  final String title;
  final String rating;
  final String amount;
  const book_list_container(
      {Key? key,
      required this.imagepath,
      required this.title,
      required this.rating,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: screensize.width * 0.27,
            height: screensize.width * 0.41,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: NetworkImage(imagepath), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
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
                Container(
                  width: screensize.width * 0.28,
                  height: screensize.width * 0.08,
                  color: Colors.transparent,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
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
                    SizedBox(
                      width: screensize.width * 0.03,
                    ),
                    Text(
                      '\$${amount}',
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
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
