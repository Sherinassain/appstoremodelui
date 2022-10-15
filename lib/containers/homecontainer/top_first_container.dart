import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Top_first_container extends StatelessWidget {
  final String imagepath;

  const Top_first_container({Key? key, required this.imagepath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
      width: screensize.width * 0.85,
      height: screensize.width * 0.38,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(imagepath), fit: BoxFit.cover)),
    );
  }
}
