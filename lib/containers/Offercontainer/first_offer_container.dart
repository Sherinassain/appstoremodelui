import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class First_offer_container extends StatelessWidget {
  final String firstimagepath;
  final String secondimagepath;
  final String title;
  final String description;
  final String rating;
  const First_offer_container(
      {Key? key,
      required this.firstimagepath,
      required this.secondimagepath,
      required this.title,
      required this.description,
      required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: screensize.width * 0.04,
          ),
          Container(
            width: screensize.width * 0.93,
            height: screensize.width * 0.58,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(firstimagepath), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: screensize.width * 0.04,
          ),
          Row(
            children: [
              Container(
                width: screensize.width * 0.17,
                height: screensize.width * 0.17,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: NetworkImage(secondimagepath),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: screensize.width * 0.04,
              ),
              Container(
                height: screensize.width * 0.21,
                width: screensize.width * 0.64,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screensize.width * 0.01,
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
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
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
