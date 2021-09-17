import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/core/shared_data/queue.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/song/song_info_bloc.dart';
import 'package:relaxation/router/app_state.dart';

class AlbumDetailsScreen extends StatelessWidget {
  final int albumId;

  AlbumDetailsScreen({required this.albumId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Album Details", style: K_Heading1),
      ),
      body: Container(
        child: BlocBuilder<SongInfoBloc, SongInfoState>(
          builder: (context, state) {
            if (state is SongLoading) {
              return CircularProgressIndicator();
            } else if (state is SongLoaded) {
              return ListView.builder(
                  itemCount: state.songList.length,
                  itemBuilder: (context, idx) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Text(
                          '${idx + 1}',
                          style: K_Heading1,
                        ),
                        title: Text(
                          '${state.songList[idx].title}',
                          style: K_Heading3,
                        ),
                        subtitle: Text(
                          '${state.songList[idx].artist}',
                          style: K_SubTitle,
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.play_arrow),
                          onPressed: () {
                            context
                                .read<Queue>()
                                .loadSongs(songList: state.songList);
                            context
                                .read<AudioPlayer>()
                                .seek(Duration.zero, index: idx);
                            context.read<AppState>().selectedIndex = 1;
                          },
                        ),
                      ),
                    );
                  });
            }
            return Text("${state.message}");
          },
        ),
      ),
    );
  }
}
