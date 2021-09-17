import 'dart:typed_data';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/core/shared_data/queue.dart';
import 'package:relaxation/features/audio_player_feature/presentation/data/song_or_album.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/album/album_info_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/song/song_info_bloc.dart';
import 'package:relaxation/injection/injection_container.dart';
import 'package:relaxation/router/app_state.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SongOrAlbumSection extends StatelessWidget {
  final void Function(int id) onTap;
  const SongOrAlbumSection({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(flex: 2, child: ToggleButton()),
          Flexible(flex: 6, child: GetAlbumOrSongList(onTap: (id) => onTap(id)))
        ],
      ),
    );
  }
}

class GetAlbumOrSongList extends StatelessWidget {
  final void Function(int id) onTap;
  const GetAlbumOrSongList({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SongOrAlbum>(builder: (_, val, __) {
      if (val.isSong) {
        return loadSongList();
      } else {
        return loadAlbumList();
      }
    });
  }

  Widget loadSongList() {
    return BlocBuilder<SongInfoBloc, SongInfoState>(builder: (_, state) {
      if (state is SongLoaded) {
        return ListView.builder(
            itemCount: state.songList.length,
            addRepaintBoundaries: true,
            itemBuilder: (_, idx) {
              return GestureDetector(
                onTap: () {
                  // TODO : Get Songs By Album or Play Song
                  Provider.of<AppState>(_, listen: false).selectedIndex = 1;
                  Provider.of<Queue>(_, listen: false)
                      .loadSongs(songList: state.songList);
                  Provider.of<AudioPlayer>(_, listen: false)
                      .seek(Duration.zero, index: idx);
                },
                child: ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueAccent,
                    ),
                    child:
                        _getArtWork(state.songList[idx].id, ResourceType.SONG),
                  ),
                  title: Text(
                    state.songList[idx].title,
                    style: K_Heading3,
                    softWrap: true,
                  ),
                  subtitle: Text(
                    '${state.songList[idx].artist}',
                    style: K_SubTitle,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              );
            });
      } else if (state is SongInfoInitial) {
        Provider.of<SongInfoBloc>(_).add(EGetAllSongs());
        return CircularProgressIndicator();
      } else {
        return CircularProgressIndicator();
      }
    });
  }

  Widget loadAlbumList() {
    return BlocBuilder<AlbumInfoBloc, AlbumInfoState>(builder: (_, state) {
      if (state is AlbumLoaded) {
        return ListView.builder(
            itemCount: state.albumList.length,
            addRepaintBoundaries: true,
            itemBuilder: (_, idx) {
              return GestureDetector(
                onTap: () {
                  int? id = int.tryParse(state.albumList[idx].id);
                  BlocProvider.of<SongInfoBloc>(_)
                      .add(EGetSongByAlbum(state.albumList[idx].id));
                  onTap(id!);
                },
                child: ListTile(
                  leading: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blueAccent,
                    ),
                    child: _getArtWork(
                        state.albumList[idx].id, ResourceType.ALBUM),
                  ),
                  title: Text(
                    state.albumList[idx].title,
                    style: K_Heading3,
                  ),
                  subtitle: Text(
                    'no of songs : ${state.albumList[idx].noOfSongs}',
                    style: K_SubTitle,
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              );
            });
      } else {
        return CircularProgressIndicator();
      }
    });
  }

  Widget _getArtWork(String id, ResourceType type) {
    return FutureBuilder<Uint8List?>(
      future: sl<FlutterAudioQuery>().getArtwork(type: type, id: id),
      builder: (_, snapshot) {
        if (snapshot.data == null)
          return Image.network(
            'https://media.istockphoto.com/vectors/vector-45-vinyl-record-vector-id1262769226?k=20&m=1262769226&s=612x612&w=0&h=9lxXXRJXdAGQHN4umdHvcRYV-AdAfuu8TC5Cv6zJ6NE=',
            fit: BoxFit.fill,
          );
        return Image.memory(
          snapshot.data!,
          fit: BoxFit.fill,
          errorBuilder: (context, error, stackTrace) => Image.network(
            context.watch<SongOrAlbum>().isSong
                ? 'https://media.istockphoto.com/vectors/vector-45-vinyl-record-vector-id1262769226?k=20&m=1262769226&s=612x612&w=0&h=9lxXXRJXdAGQHN4umdHvcRYV-AdAfuu8TC5Cv6zJ6NE='
                : 'https://us.123rf.com/450wm/sxwx/sxwx1807/sxwx180700096/110213569-vinyl-lp-and-ep-references-collection-with-various-sizes-of-music-media-12-10-and-7-inch-pressed-dis.jpg?ver=6',
            fit: BoxFit.fill,
          ),
        );
      },
    );
  }
}

class ToggleButton extends StatelessWidget {
  const ToggleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70, width: 2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Consumer<SongOrAlbum>(
            builder: (_, value, __) => ToggleSwitch(
              animate: true,
              curve: Curves.decelerate,
              minWidth: MediaQuery.of(context).size.width * 3 / 8,
              minHeight: MediaQuery.of(context).size.height * 1 / 24,
              cornerRadius: 50.0,
              activeBgColors: [
                [Colors.white],
                [Colors.white]
              ],
              activeFgColor: Colors.black,
              inactiveBgColor: Colors.blueAccent,
              inactiveFgColor: Colors.white,
              initialLabelIndex: (value.isSong ? 1 : 0),
              totalSwitches: 2,
              labels: ['Albums', 'Songs'],
              radiusStyle: true,
              onToggle: (index) {
                if (index == 0) {
                  value.setSongOrAlbum(false);
                  Provider.of<AlbumInfoBloc>(context, listen: false)
                      .add(EGetAllAlbums());
                } else {
                  value.setSongOrAlbum(true);
                  Provider.of<SongInfoBloc>(context, listen: false)
                      .add(EGetAllSongs());
                }
              },
            ),
          )),
    );
  }
}
