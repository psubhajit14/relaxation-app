// player.dart

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:relaxation/core/shared_data/queue.dart';
import 'package:relaxation/features/audio_player_feature/presentation/widgets/player_buttons.dart';
import 'package:relaxation/features/audio_player_feature/presentation/widgets/playlist.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/song/song_info_bloc.dart';

/// An audio player.
///
/// At the bottom of the page there is [PlayerButtons], while the rest of the
/// page is filled with a [PLaylist] widget.
class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late AudioPlayer _audioPlayer;
  late Queue _queue;
  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _queue = Queue(_audioPlayer);
    _queue.loadSongs();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Player'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          child: SafeArea(
            child:
                BlocBuilder<SongInfoBloc, SongInfoState>(builder: (_, state) {
              if (state is SongInfoInitial) {
                BlocProvider.of<SongInfoBloc>(context).add(EGetAllSongs());
                return Center(child: CircularProgressIndicator());
              } else if (state is SongLoaded) {
                _queue.loadSongs(songList: state.songList);
                return Container(
                  child: Column(
                    children: [
                      Expanded(child: Playlist(_audioPlayer)),
                      Divider(
                        color: Colors.black,
                      ),
                      StreamBuilder<SequenceState?>(
                          stream: _audioPlayer.sequenceStateStream,
                          builder: (context, snapshot) {
                            if (snapshot.data != null) {
                              return Expanded(
                                child: getSongArtwork(snapshot.data!.sequence,
                                    snapshot.data!.currentIndex),
                              );
                            } else {
                              return CircularProgressIndicator();
                            }
                          }),
                      StreamBuilder(
                          stream: _audioPlayer.positionStream,
                          builder: (_, snapshot) {
                            return ProgressBar(
                              progress: _audioPlayer.position,
                              total: _audioPlayer.duration ?? Duration.zero,
                              onSeek: _audioPlayer.seek,
                            );
                          }),
                      PlayerButtons(_audioPlayer),
                    ],
                  ),
                );
              } else {
                return Center(
                  child: Text(state.message),
                );
              }
            }),
          ),
        ),
      ),
    );
  }
}
