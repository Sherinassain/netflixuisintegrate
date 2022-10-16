import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixuis/Downloads/model/downloadsmodel.dart';
import 'package:netflixuis/fastlaugh/fastlaugh/fast_laugh_bloc.dart';
import 'package:netflixuis/pages/conswidgets/apiimageconsturl.dart';
import 'package:netflixuis/pages/conswidgets/constantelements.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class Videolistlteminheritedwidget extends InheritedWidget {
  final Widget widget;
  final Downloadmodel moviedata;

  const Videolistlteminheritedwidget(
      {Key? key, required this.widget, required this.moviedata})
      : super(child: widget);
  @override
  bool updateShouldNotify(covariant Videolistlteminheritedwidget oldWidget) {
    return oldWidget.moviedata != moviedata;
  }

  static Videolistlteminheritedwidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<Videolistlteminheritedwidget>();
  }
}

class Fastlaugh_container extends StatelessWidget {
  Fastlaugh_container({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final posterpath =
        Videolistlteminheritedwidget.of(context)?.moviedata.posterpath;
    final videopurl = dummyvideourls[index % dummyvideourls.length];
    return Stack(
      children: [
        Fastlaughvideoplayer(videourl: videopurl, onstatechanged: (bool) {}),
        Align(
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
                        onPressed: () {},
                        icon: Icon(
                          Icons.volume_off,
                          color: constwhite,
                          size: 30,
                        ))),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //video Widgets
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: posterpath == null
                          ? null
                          : NetworkImage('$imageappendurl$posterpath'),
                    ),
                    Video_widgets(icon: Icons.insert_emoticon, title: 'LoL'),
                    Video_widgets(icon: Icons.add, title: 'My List'),
                    GestureDetector(
                        onTap: () {
                          final moviename =
                              Videolistlteminheritedwidget.of(context)
                                  ?.moviedata
                                  .posterpath;
                          if (moviename != null) {
                            Share.share(moviename);
                          }
                        },
                        child:
                            Video_widgets(icon: Icons.share, title: 'Share')),
                    Video_widgets(icon: Icons.play_arrow, title: 'Play'),
                  ],
                ),
              ],
            ),
          ),
        ),
        // ),
      ],
    );
  }
}

class Video_widgets extends StatelessWidget {
  Video_widgets({Key? key, required this.icon, required this.title})
      : super(key: key);
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: constwhite,
          ),
          Text(
            title,
            style: TextStyle(color: constwhite, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class Fastlaughvideoplayer extends StatefulWidget {
  final String videourl;
  final void Function(bool isplaying) onstatechanged;
  const Fastlaughvideoplayer(
      {Key? key, required this.videourl, required this.onstatechanged})
      : super(key: key);

  @override
  State<Fastlaughvideoplayer> createState() => _FastlaughvideoplayerState();
}

class _FastlaughvideoplayerState extends State<Fastlaughvideoplayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videourl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController),
              )
            : Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ));
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
