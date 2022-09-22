import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/Search/searchpage_containers.dart';

class Searchitemlist extends StatelessWidget {
  Searchitemlist({Key? key}) : super(key: key);
  final Searchimages = [
    'https://i.pinimg.com/474x/24/84/63/2484635abcb867e281ede4732121390a.jpg',
    'https://www.mixindia.com/wp-content/uploads/2022/02/Agilan-Tamil-Movie-Poster-2.jpg',
    'https://m.media-amazon.com/images/M/MV5BYWI2ODNjMDktZjcxNS00YThkLTljMDUtMGIyOTg3ZjY2MjlhXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
      
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.separated(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
          itemBuilder: (context, index) {
            return Searchboxcontainers();
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 1,);
          },
          itemCount: 15));
  }
}
