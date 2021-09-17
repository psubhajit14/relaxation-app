import 'package:flutter/material.dart';
import 'package:relaxation/features/data_query_feature/presentation/widgets/song_or_album_section.dart';

import '../features/data_query_feature/presentation/widgets/app_headline.dart';
import '../features/data_query_feature/presentation/widgets/playlist_bar.dart';

class HomePage extends StatelessWidget {
  final void Function(String type, int id) onTap;
  const HomePage({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(flex: 1, child: Placeholder(color: Colors.blueAccent)),
          Flexible(
              flex: 4,
              child: Container(
                margin: EdgeInsets.fromLTRB(24, 24, 0, 0),
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(flex: 1, child: AppHeadline()),
                    Flexible(
                        flex: 2,
                        child: PlaylistBar(
                            onTap: (playlistId) =>
                                onTap("playlist", playlistId))),
                    Flexible(
                        flex: 5,
                        child: SongOrAlbumSection(
                            onTap: (albumId) => onTap("album", albumId))),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
