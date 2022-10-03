import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../pages/conswidgets/constantelements.dart';

class Searchboxcontainers extends StatelessWidget {
  final String imageurl;
  final String title;
  const Searchboxcontainers(
      {Key? key, required this.imageurl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screensize.width * 0.04),
      child: Container(
        height: screensize.width * 0.3,
        width: screensize.width * 0.8,
        decoration: BoxDecoration(color: Colors.transparent),
        child: Row(
          children: [
            Container(
              height: screensize.width * 0.3,
              width: screensize.width * 0.35,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: NetworkImage(imageurl),
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              height: screensize.width * 0.3,
              width: screensize.width * 0.4,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screensize.width * 0.03),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: constwhite, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: screensize.width * 0.3,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage('assets/playcircle.png'),
                      color: constwhite,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
