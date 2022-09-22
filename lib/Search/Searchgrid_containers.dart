import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Search_Containers extends StatelessWidget {
   Search_Containers({Key? key}) : super(key: key);
  final List searchimages= ['https://www.plumeriamovies.com/hq-malayalam-movie-posters-random/luca-malayalam-movie-poster/',
    'https://i1.wp.com/www.nairtejas.com/wp-content/uploads/2019/12/Under-World-Malayalam-film-poster-by-Oldmonks.jpg?ssl=1',
    'https://i2.wp.com/www.nairtejas.com/wp-content/uploads/2019/12/Allu-Ramendran-poster-by-Thought-Station.jpg?ssl=1',];

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height:screensize.width*0.5,
        decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/M/MV5BN2RjZDJhYzUtOTQ5Yy00OWM3LWE5OTctM2Y0YWVmNzAzODllXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg'),fit: BoxFit.cover,),borderRadius: BorderRadius.circular(7)),
        
      ),
    );
  }
}
