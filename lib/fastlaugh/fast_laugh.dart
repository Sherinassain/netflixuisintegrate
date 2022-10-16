import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixuis/Search/searchbloc/search_bloc.dart';
import 'package:netflixuis/Search/searchpage_containers.dart';
import 'package:netflixuis/fastlaugh/faslaughcontainer.dart';
import 'package:netflixuis/fastlaugh/fastlaugh/fast_laugh_bloc.dart';

class Screenfastlaugh extends StatelessWidget {
  const Screenfastlaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<FastLaughBloc>(context).add(Initialize());
    });
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isloading) {
              return Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            } else if (state.iserror) {
              return Center(
                child: Text('Error while getting data'),
              );
            } else if (state.videoslist.isEmpty) {
              return Center(
                child: Text('Error while getting data'),
              );
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(state.videoslist.length, (index) {
                  // return Fastlaugh_container(index: index);
                  return Videolistlteminheritedwidget(
                      widget: Fastlaugh_container(
                        key: Key(index.toString()),
                        index: index),
                      moviedata: state.videoslist[index]);
                }),
              );
            }
          },
        )));
  }
}
