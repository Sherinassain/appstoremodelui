import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Second_app_containers extends StatelessWidget {
  final width;
  final height;
  const Second_app_containers(
      {Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Padding(
        padding: EdgeInsets.only(left: screensize.width * 0.03),
        child: Row(
          children: [
            Container(
              width: screensize.width * 0.17,
              height: screensize.width * 0.172,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.transparent,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmAfAkDP9Ju7pJpAliE-1d_y_QodXbE_fAqg&usqp=CAU'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: screensize.width * 0.07,
            ),
            Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  const Text(
                    'Clash of Clans',
                    style:  TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screensize.width * 0.02,
                  ),
                  const Text(
                    'Supercell',
                    style:  TextStyle(
                        color: Colors.white60,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: screensize.width * 0.01,
                  ),
                  Row(
                    children: [
                      const Text(
                        '4.5 ',
                        style:  TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.white54,
                        size: 15,
                      ),
                      SizedBox(
                        width: screensize.width * 0.01,
                      ),
                      const Text(
                        'Rated for 7+',
                        style:  TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.01,
                  ),
                  const Text(
                    'in-app purchases',
                    style:  TextStyle(
                        color: Colors.white54,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: screensize.width * 0.14,
            ),
            Container(
              width: screensize.width * 0.2,
              height: screensize.width * 0.07,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white54, width: 2),
                  borderRadius: BorderRadius.circular(23)),
              child: const Center(
                  child: Text(
                'insatll',
                style:
                     TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
