import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Image_container extends StatelessWidget {
  final int imageindexnumber;
  final double imageangle;
  final double imagewidth;
  final double imageheight;
  final double rightpadding;
  final double leftpadding;
  final double bottompadding;
  final double toppadding;
  Image_container({
    Key? key,
    this.imageangle = 0,
    required this.imageindexnumber,
    required this.imagewidth,
    required this.imageheight,
     this.toppadding=0,
     this.bottompadding=0,
     this.rightpadding=0,
   this.leftpadding=0,
  }) : super(key: key);
  final List imagelinkes = [
    'https://pbs.twimg.com/media/FYuukouacAASPbd.jpg:large',
    'https://m.media-amazon.com/images/M/MV5BYTVkNmI5MGQtNWFjNy00NzUwLWJiNDgtYWFmYWMzZDkyMTI2XkEyXkFqcGdeQXVyMjkxNzQ1NDI@._V1_.jpg',
    'https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/nna-thaan-case-kodu-et00324663-1659515898.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: imageangle * pi / 180,
      child: Container(
        margin: EdgeInsets.only(left: leftpadding, right: rightpadding, top: toppadding, bottom: bottompadding),
        width: screensize.width * imagewidth,
        height: screensize.height * imageheight,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              image: NetworkImage(imagelinkes[imageindexnumber]),
              fit: BoxFit.cover,),borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}
