import 'package:flutter/material.dart';
import 'package:relaxation/features/data_query_feature/presentation/widgets/song_or_album_section.dart';

import '../widgets/app_headline.dart';
import '../widgets/playlist_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  Flexible(flex: 2, child: PlaylistBar()),
                  Flexible(flex: 5, child: SongOrAlbumSection()),
                ],
              ),
            )),
      ],
    );
  }
}
