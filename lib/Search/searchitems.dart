import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixuis/Search/searchbloc/search_bloc.dart';
import 'package:netflixuis/Search/searchpage_containers.dart';
import 'package:netflixuis/pages/conswidgets/apiimageconsturl.dart';

import 'Search_idle_containers.dart';

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
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.isloading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.iserror) {
          return Center(
            child: Text('Error while getting data'),
          );
        } else if (state.idlelist.isEmpty) {
          return Center(
            child: Text('List is empty'),
          );
        }
        return ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final movie = state.idlelist[index];

              return Searchboxcontainers(
                  imageurl: '$imageappendurl${movie.posterpath}',
                  title: movie.title ?? 'No title provided');
            },
            separatorBuilder: (context, index) {
              return SizedBox(
                height: screensize.width * 0.04,
              );
            },
            itemCount: state.idlelist.length);
      },
    );

    // },
  }
}
