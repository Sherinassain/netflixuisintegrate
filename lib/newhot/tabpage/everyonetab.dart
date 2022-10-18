import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflixuis/newhot/hotandnewbloc/hotandnew_bloc.dart';
import 'package:netflixuis/newhot/tabpage/cominsoontab.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';

import '../../pages/conswidgets/apiimageconsturl.dart';



class Everyone_icon extends StatelessWidget {
  final IconData iconpath;
  final String icontitle;
  const Everyone_icon(
      {Key? key, required this.iconpath, required this.icontitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconpath,
          color: constwhite,
        ),
        Text(
          icontitle,
          style: const TextStyle(
              fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Everyones_widget extends StatelessWidget {
  final String posterpath;
  final String moviename;
  final String description;
  const Everyones_widget(
      {Key? key,
      required this.posterpath,
      required this.moviename,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    final paddingsize = (screensize.width) - (screensize.width - 55);

    return Container(
      width: double.infinity,
      height: screensize.height * 0.54,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedheight,
          Text(
            
          moviename,
            style: TextStyle(
                color: constwhite, fontWeight: FontWeight.bold, fontSize: 19),
          ),
          sizedheight,
          Text(
          
            description,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screensize.width * 0.1,
          ),
          Container(
            width: double.infinity,
            height: screensize.height * 0.23,
            decoration:  BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      posterpath),
                    fit: BoxFit.cover,
                    
                    )
                    ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 10,
                  left: 332,
                  child: CircleAvatar(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      radius: 20,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_off,
                            color: constwhite,
                            size: 20,
                          ))),
                ),
              ],
            ),
          ),
          iconspaceheight,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Everyone_icon(iconpath: Icons.share, icontitle: 'Share'),
              iconspacewidth,
              Everyone_icon(iconpath: Icons.add, icontitle: 'MyList'),
              iconspacewidth,
              Everyone_icon(iconpath: Icons.play_arrow, icontitle: 'Play'),
              iconspacewidth,
            ],
          )
        ],
      ),
    );
  }
}

class Everyoneslist extends StatelessWidget {
  const Everyoneslist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return RefreshIndicator(
      onRefresh: () async{
         BlocProvider.of<HotandnewBloc>(context)
          .add(Loaddataineveryoneiswatching());
      },
      child: BlocBuilder<HotandnewBloc, HotandnewState>(
        builder: (context, state) {
          if (state.isloading) {
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
              ),
            );
          } else if (state.iserror) {
            return Center(
              child: Text('Error while fetching Data...'),
            );
          } else if (state.everyoneswatchinglist.isEmpty) {
            return Center(
              child: Text('Comming soon list is empty'),
            );
          } else {
            return ListView.builder(
           
                itemCount: state.everyoneswatchinglist.length,
                itemBuilder: (BuildContext context, index) {
                  final movie = state.everyoneswatchinglist[index];
                  if (movie.id == null) {
                    return SizedBox();
                  }
                 
                  final tv = state.everyoneswatchinglist[index];
                  return Everyones_widget(
                      posterpath: '$imageappendurl${tv.posterPath}',
                      moviename: tv.originalName??'No Name provided',
                      description: tv.overview??'No Discription',);
                });
          }
        },
      ),
    );
  }
}
