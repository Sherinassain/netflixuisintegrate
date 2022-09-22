import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';

class Searchboxcontainers extends StatelessWidget {
  const Searchboxcontainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenwidth = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/M/MV5BN2RjZDJhYzUtOTQ5Yy00OWM3LWE5OTctM2Y0YWVmNzAzODllXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_FMjpg_UX1000_.jpg'),fit: BoxFit.cover)),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.06,
          ),
          Text('Movie name',style: TextStyle(color: constwhite,fontWeight: FontWeight.bold),)
        ,
         SizedBox(
            width: MediaQuery.of(context).size.width * 0.15,
          ),
          IconButton(onPressed: (){}, icon: ImageIcon(AssetImage('assets/playcircle.png'),color: constwhite,size: 45,)),
        ],
      ),
    );
  }
}
