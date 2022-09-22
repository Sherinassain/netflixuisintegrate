import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';

class Fastlaugh_container extends StatelessWidget {
  Fastlaugh_container({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.5),
                      radius: 30,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.volume_off,color: constwhite,size: 30,))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //video Widgets
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://static.toiimg.com/photo/msid-83977775/83977775.jpg'),
                      ),
                     Video_widgets(icon: Icons.insert_emoticon, title: 'LoL'),
                     Video_widgets(icon: Icons.add, title: 'My List'),
                     Video_widgets(icon: Icons.share, title: 'Share'),
                     Video_widgets(icon: Icons.play_arrow, title: 'Play'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Video_widgets extends StatelessWidget {
  Video_widgets({Key? key,required this.icon,required this.title}) : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
        
         Icon(icon,color: constwhite,),
         Text(title,style: TextStyle(color: constwhite,fontSize: 14),),
       



        ],
      ),
    );
  }
}
