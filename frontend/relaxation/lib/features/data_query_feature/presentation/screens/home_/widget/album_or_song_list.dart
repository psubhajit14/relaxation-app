import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/entities.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/home_/state/home_state_bloc/home_state_bloc.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../../../../provider_dependecy.dart';

class AlbumOrSongList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(homeStateBloc);
    final bloc = context.read(homeStateBloc.notifier);
    final width = MediaQuery.of(context).size.width;

    return state.maybeWhen(
      orElse: () => CircularProgressIndicator(),
      data: (data) => Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 3.0),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: ToggleSwitch(
                minWidth: width * .4,
                initialLabelIndex: data.toggleSwitchState,
                cornerRadius: 30.0,
                activeFgColor: Colors.black,
                inactiveBgColor: Colors.black,
                inactiveFgColor: Colors.white,
                totalSwitches: 2,
                labels: ['Albums', 'Songs'],
                iconSize: 16,
                customTextStyles: [KHeading3, KHeading3],
                activeBgColors: [
                  [Colors.green],
                  [Colors.green]
                ],
                onToggle: (index) =>
                    bloc.add(HomeStateEvent.toggleSwitch(index)),
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              color: Colors.transparent,
              margin: const EdgeInsets.only(top: 16),
              child: ListView.builder(
                itemCount: data.toggleSwitchState == 1
                    ? data.songs.length
                    : data.albums.length,
                addRepaintBoundaries: true,
                itemBuilder: (ctx, idx) => data.toggleSwitchState == 1
                    ? _SongTile(song: data.songs[idx], bloc: bloc)
                    : _AlbumTile(
                        album: data.albums[idx],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SongTile extends StatelessWidget {
  const _SongTile({
    Key? key,
    required this.bloc,
    required this.song,
  }) : super(key: key);

  final HomeStateBloc bloc;
  final SongInfo song;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 24),
      decoration:
          new BoxDecoration(border: new Border(bottom: new BorderSide())),
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: Icon(
            FontAwesomeIcons.compactDisc,
            color: Colors.white,
          ),
          title: Text(
            song.title,
            style: KHeading3,
            textAlign: TextAlign.center,
          ),
          subtitle: Text(
            song.album,
            style: KSubTitle,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class _AlbumTile extends ConsumerWidget {
  const _AlbumTile({
    Key? key,
    required this.album,
  }) : super(key: key);

  final AlbumInfo album;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final appState = watch(appStateProvider);
    return Container(
      margin: const EdgeInsets.only(right: 24),
      decoration:
          new BoxDecoration(border: new Border(bottom: new BorderSide())),
      child: InkWell(
        onTap: () => appState.copyWith(albumId: int.parse(album.id)),
        child: ListTile(
          leading: Icon(
            FontAwesomeIcons.listAlt,
            color: Colors.white,
          ),
          title: Text(
            album.title,
            style: KHeading3,
            textAlign: TextAlign.center,
          ),
          subtitle: Text(
            'no of songs : ' + album.noOfSongs,
            style: KSubTitle,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.more_vert_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
