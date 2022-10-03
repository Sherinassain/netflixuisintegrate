import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflixuis/dbloc/downloads/downloads_bloc.dart';
import 'package:netflixuis/pages/conswidgets/apiimageconsturl.dart';
import 'package:netflixuis/pages/conswidgets/imagecontainer.dart';

import '../pages/conswidgets/constantelements.dart';

class Section1 extends StatelessWidget {
  const Section1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.settings,
          color: constwhite,
        ),
        SizedBox(
          width: constantwidths,
        ),
        Text(
          //section1- smartdownloads
          'Smart downloads',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //section2- intro to images
    final Size screensize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: constantwidths,
        ),
        Column(
          children: [
            Text(
              'Introducing Downloads for you',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: constantwidths,
            ),
            Text(
              'we will download a personalized selection of\nmovies and shows for you.so there`s\nalways something to watch on your\ndevice',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 16),
            )
          ],
        ),
        SizedBox(
          height: constantwidths,
        ),
        BlocBuilder<DownloadsBloc, Downloadstate>(
          builder: (context, state) {
            return SizedBox(
              height: screensize.height * 0.50,
              width: screensize.width,
              child: state.isloading
                  ? Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                            child: CircleAvatar(
                          radius: screensize.width * 0.33,
                          backgroundColor: Colors.grey.shade600,
                        )),
                        //image container
                        Image_container(
                          imageindexnumber:
                              '$imageappendurl${state.downloads[3].posterpath}',
                          imagewidth: 0.35,
                          imageheight: 0.24,
                          imageangle: -23,
                          rightpadding: 150,
                          bottompadding: 31,
                        ),
                        Image_container(
                          imageindexnumber:
                              '$imageappendurl${state.downloads[1].posterpath}',
                          imagewidth: 0.35,
                          imageheight: 0.24,
                          imageangle: 23,
                          leftpadding: 150,
                          bottompadding: 31,
                        ),
                        Image_container(
                          imageindexnumber:
                              '$imageappendurl${state.downloads[2].posterpath}',
                          imagewidth: 0.35,
                          imageheight: 0.28,
                        ),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}

class section3 extends StatelessWidget {
  const section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //section3- material buttons
    return Column(
      children: [
        SizedBox(
          height: constantwidths,
        ),
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: constblue,
            onPressed: () {},
            child: Text(
              'Set up',
              style: TextStyle(
                  color: constwhite, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: constantwidths,
        ),
        MaterialButton(
          color: constwhite,
          onPressed: () {},
          child: Text(
            'See what you can download',
            style: TextStyle(
                color: constblack, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        )
      ],
    );
  }
}
