import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'book_list_container.dart';

class Main_books_container extends StatelessWidget {
  final String title;
  const Main_books_container({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: screensize.width * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               title,
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
            height: screensize.width * 0.02,
          ),
          Container(
              width: double.infinity,
              height: screensize.width * 0.63,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const[
                  //1
                   book_list_container(
                      imagepath:
                          'https://m.media-amazon.com/images/I/51Puh9yUqtL.jpg',
                      title: "World's Best short stories",
                      rating: '4.3',
                      amount: '103'),
                  //2
                   book_list_container(
                      imagepath:
                          'https://m.media-amazon.com/images/I/51xuANdpEYL.jpg',
                      title: "Ginny baird",
                      rating: '4.5',
                      amount: '170'),
                  //3
                   book_list_container(
                      imagepath:
                          'https://m.media-amazon.com/images/I/51MicQZzKEL.jpg',
                      title: "Love story",
                      rating: '3.9',
                      amount: '249'),
                  //4
                   book_list_container(
                      imagepath:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjdqwcn4m0trx0OSAVDiOw8Fxl8RafjSgt8w&usqp=CAU',
                      title: "The duke",
                      rating: '3.8',
                      amount: '149'),
                ],
              ))
        ],
      ),
    );
  }
}
