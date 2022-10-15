import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Install_container extends StatelessWidget {
  final String isecondimagepath;
  final String ititle;
  final String imb;
  final String irating;
  final String isubtitle;

  const Install_container(
      {Key? key,
      required this.isubtitle,
      required this.imb,
      required this.irating,
      required this.isecondimagepath,
      required this.ititle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
      width: screensize.width * 0.6,
      height: screensize.width * 0.23,
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
                  image: DecorationImage(
                      image: NetworkImage(isecondimagepath),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: screensize.width * 0.07,
            ),
            Column(children: [
              SizedBox(
                height: screensize.width * 0.03,
              ),
              Text(
                ititle,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screensize.width * 0.01,
              ),
              Text(
                isubtitle,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screensize.width * 0.02,
              ),
              Row(
                children: [
                  Text(
                    irating,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: screensize.width * 0.01,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.grey,
                    size: 15,
                  ),
                  SizedBox(
                    width: screensize.width * 0.01,
                  ),
                  Text(
                    imb,
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
