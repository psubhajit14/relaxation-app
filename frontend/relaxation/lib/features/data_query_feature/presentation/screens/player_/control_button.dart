import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/constants/textstyle.dart';

class ControlButton extends ConsumerWidget {
  const ControlButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: ProgressBar(
              progress: Duration(milliseconds: 1000),
              buffered: Duration(milliseconds: 2000),
              total: Duration(milliseconds: 5000),
              baseBarColor: Colors.grey,
              progressBarColor: Colors.green,
              bufferedBarColor: Colors.greenAccent,
              thumbColor: Colors.green,
              timeLabelTextStyle: KSubTitle,
              onSeek: (duration) {
                print('User selected a new time: $duration');
              },
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: InkWell(
                      onTap: () {}, child: Icon(FontAwesomeIcons.random)),
                ),
                Flexible(
                  child: InkWell(
                      onTap: () {}, child: Icon(FontAwesomeIcons.stepBackward)),
                ),
                Flexible(
                  child: InkWell(
                      onTap: () {},
                      child: Icon(
                        FontAwesomeIcons.solidPlayCircle,
                        size: 50,
                      )),
                ),
                Flexible(
                  child: InkWell(
                      onTap: () {}, child: Icon(FontAwesomeIcons.stepForward)),
                ),
                Flexible(
                  child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.repeat_one,
                        color: Colors.green,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
