import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/home_/album_or_song_list.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/home_/heading.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/home_/playlist_bar.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.5, 0.8],
          colors: [
            Colors.green,
            Colors.black87,
          ],
        )),
        child: Container(
          margin: EdgeInsets.fromLTRB(24, 24, 0, 0),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(flex: 1, child: Heading()),
              Flexible(
                flex: 3,
                child: PlaylistBar(),
              ),
              Flexible(
                flex: 5,
                child: AlbumOrSongList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
