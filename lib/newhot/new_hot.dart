import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:netflixuis/newhot/tabpage/cominsoontab.dart';
import 'package:netflixuis/newhot/tabpage/everyonetab.dart';
import 'package:netflixuis/pages/conswidgets/apiimageconsturl.dart';
import 'package:netflixuis/pages/conswidgets/appbars.dart';

import '../pages/conswidgets/constantelements.dart';
import 'hotandnewbloc/hotandnew_bloc.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class Screennewandhot extends StatelessWidget {
  Screennewandhot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //rl
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          key: _scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: AppBar(
              title: Text('New & Hot',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontSize: 30, fontWeight: FontWeight.w800)),
              actions: [
                Icon(
                  Icons.cast,
                  color: constwhite,
                  size: 30,
                ),
                SizedBox(
                  width: constantwidths,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage('assets/smile.png'),
                      )),
                )
              ],
              bottom: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  labelColor: constblack,
                  unselectedLabelColor: constwhite,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  tabs: [
                    Tab(
                      text: '🍿 Coming Soon',
                    ),
                    Tab(
                      text: "👀 Everyone's watching",
                    ),
                  ]),
            ),
          ),
          backgroundColor: Colors.black,
          body: TabBarView(children: [
            CommingsoonList(
              key: Key('Comming soon'),
            ),
            Everyoneslist(
              key: Key('Every_ones_watching'),
            ),
          ])),
    );
  }

  // _tabbarswitch(String name) {
  //   return Center(child: Text('$name'));
  // }

}

class CommingsoonList extends StatelessWidget {
  const CommingsoonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      BlocProvider.of<HotandnewBloc>(context).add(Loaddataincommingsoon());
    });
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<HotandnewBloc>(context).add(Loaddataincommingsoon());
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
          } else if (state.commingsoonlist.isEmpty) {
            return Center(
              child: Text('Comming soon list is empty'),
            );
          } else {
            return ListView.builder(
                itemCount: state.commingsoonlist.length,
                itemBuilder: (BuildContext context, index) {
                  final movie = state.commingsoonlist[index];
                  if (movie.id == null) {
                    return SizedBox();
                  }
                  String month = '';
                  String dates = '';
                  try {
                    final _date = DateTime.tryParse(movie.releaseDate!);
                    final formatteddate =
                        DateFormat.yMMMd('en_US').format(_date!);
                    month = formatteddate
                        .split(' ')
                        .first
                        .substring(0, 3)
                        .toUpperCase();
                    dates = movie.releaseDate!.split('-')[1];
                  } catch (_) {
                    month = '';
                    dates = '';
                  }

                  return Comingsoon_widget(
                      id: movie.id.toString(),
                      month: month,
                      day: dates,
                      posterpath: '$imageappendurl${movie.posterPath}',
                      moviename: movie.originalTitle ?? 'No title',
                      description: movie.overview ?? 'No Discription');
                });
          }
        },
      ),
    );
  }
}
