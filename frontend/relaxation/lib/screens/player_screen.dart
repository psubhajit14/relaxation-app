import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/core/shared_data/queue.dart';
import 'package:relaxation/features/audio_player_feature/presentation/widgets/player_buttons.dart';
import 'package:relaxation/features/audio_player_feature/presentation/widgets/playlist.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/song/song_info_bloc.dart';

class PlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player", style: K_Heading1),
      ),
      body: Player(),
    );
  }
}

class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late AudioPlayer _audioPlayer;
  late Queue _queue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: BlocBuilder<SongInfoBloc, SongInfoState>(builder: (_, state) {
          _queue = context.watch<Queue>();
          _audioPlayer = context.watch<AudioPlayer>();
          if (state is SongInfoInitial) {
            BlocProvider.of<SongInfoBloc>(context).add(EGetAllSongs());
            return Center(child: CircularProgressIndicator());
          } else if (_queue.songList.isEmpty && state is SongLoaded) {
            _queue.loadSongs(songList: state.songList);
            return _loadPlayer();
          } else if (_queue.songList.isNotEmpty && state is SongLoaded) {
            return _loadPlayer();
          } else {
            return Center(
              child: Text(state.message),
            );
          }
        }),
      ),
    );
  }

  Container _loadPlayer() {
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
                    child: getSongArtwork(
                        snapshot.data!.sequence, snapshot.data!.currentIndex),
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
  }
}
