import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixuis/Search/Search_title.dart';
import 'package:netflixuis/Search/searchbloc/search_bloc.dart';

import '../pages/conswidgets/apiimageconsturl.dart';
import 'Searchgrid_containers.dart';

class Searchresult_page extends StatelessWidget {
  Searchresult_page({Key? key}) : super(key: key);
  final List searchimages = [
    'https://www.plumeriamovies.com/hq-malayalam-movie-posters-random/luca-malayalam-movie-poster/',
    'https://i1.wp.com/www.nairtejas.com/wp-content/uploads/2019/12/Under-World-Malayalam-film-poster-by-Oldmonks.jpg?ssl=1',
    'https://i2.wp.com/www.nairtejas.com/wp-content/uploads/2019/12/Allu-Ramendran-poster-by-Thought-Station.jpg?ssl=1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.black),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Search_title(title: 'Movies&Tv'),
                Expanded(
                  child: BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      return GridView.count(
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 3,
                        childAspectRatio: 1 / 2,
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        children: List.generate(state.searchresultlist.length,
                            (index) {
                          final movie = state.searchresultlist[index];

                          return Search_Containers(
                            searchimagepath:
                                '$imageappendurl${movie.posterPath}',
                          );
                        }),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
