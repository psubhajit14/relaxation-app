import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ndialog/ndialog.dart';
import 'package:relaxation/constants/labels.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/home_/state/home_state_bloc/home_state_bloc.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/playlist_details/state/playlist_state_bloc.dart';
import 'package:relaxation/provider_dependecy.dart';

class SongList extends StatelessWidget {
  const SongList({Key? key, required this.songs, required this.type})
      : super(key: key);
  final List<SongInfo> songs;
  final String type;
  @override
  Widget build(BuildContext context) {
    //print("song length" + songs.length.toString());
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      itemCount: songs.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) =>
          SongTile(index: index, song: songs[index], type: type),
    );
  }
}

class SongTile extends StatelessWidget {
  const SongTile(
      {Key? key, required this.index, required this.song, required this.type})
      : super(key: key);
  final int index;
  final SongInfo song;
  final String type;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        horizontalTitleGap: 2,
        leading: Text('${index + 1} ' + LBullet,
            style: KHeading2.copyWith(color: Colors.white)),
        title: Text(
          song.title,
          style: KHeading3.copyWith(color: Colors.white),
        ),
        subtitle: Text(
          song.artist,
          softWrap: true,
          style: KSubTitle.copyWith(color: Colors.white),
        ),
        trailing: PopupMenuButton(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: LabelIcon(
                        icon: Icons.add_to_queue_outlined,
                        label: "Add to queue",
                        song: song),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: LabelIcon(
                        icon: Icons.playlist_add_outlined,
                        label: "Add Song to Playlist",
                        song: song),
                    value: 2,
                  ),
                  type == LPlaylist
                      ? PopupMenuItem(
                          child: LabelIcon(
                            icon: Icons.remove_circle_outline,
                            label: "Remove Song to Playlist",
                            song: song,
                            onTap: () {
                              context
                                  .read(playlistStateBloc.notifier)
                                  .add(PlaylistStateEvent.removeSong(song));
                            },
                          ),
                          value: 3,
                        )
                      : PopupMenuItem(
                          child: null,
                          enabled: false,
                        ),
                ]),
      ),
    );
  }
}

class LabelIcon extends StatelessWidget {
  const LabelIcon(
      {Key? key,
      required this.icon,
      required this.label,
      required this.song,
      this.onTap})
      : super(key: key);
  final IconData icon;
  final String label;
  final void Function()? onTap;
  final SongInfo song;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () async {
            await _showPlaylist(context, song).show(context);
          },
      child: Container(
        width: min(MediaQuery.of(context).size.width / 2, 200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                label,
                style: KHeading3.copyWith(color: Colors.black),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

DialogBackground _showPlaylist(BuildContext context, SongInfo song) {
  final state = context.read(homeStateBloc);
  final bloc = context.read(homeStateBloc.notifier);
  return DialogBackground(
    color: Colors.black,
    dialog: AlertDialog(
      content: state.maybeWhen(
          data: (data) => Container(
                height: 450,
                width: 500,
                child: ListView.builder(
                    itemCount: data.playlists.length + 1,
                    itemBuilder: (ctx, idx) => idx == data.playlists.length
                        ? ElevatedButton(
                            onPressed: () {}, child: Text('Create Playlist'))
                        : ElevatedButton(
                            onPressed: () {
                              bloc.add(HomeStateEvent.addSongToPlaylist(
                                playlist: data.playlists[idx],
                                song: song,
                              ));
                              Navigator.pop(ctx);
                            },
                            child: Text(data.playlists[idx].name))),
              ),
          orElse: () => CircularProgressIndicator()),
    ),
  );
}

DialogBackground _showDialog(
    TextEditingController _textEditingController, BuildContext context) {
  return DialogBackground(
    color: Colors.black,
    dialog: AlertDialog(
      title: Text(
        "Enter name of new Playlist",
        style: KHeading2,
      ),
      content: TextField(
          maxLength: 8,
          autofocus: true,
          keyboardType: TextInputType.text,
          cursorColor: Colors.green,
          onChanged: (val) {
            _textEditingController.text = val;
          },
          onSubmitted: (val) {
            print(val);
            if (val != '') {
              Navigator.pop(context);
            }
          },
          buildCounter: (
            BuildContext context, {
            required int currentLength,
            required int? maxLength,
            required bool isFocused,
          }) {
            return Text(
              '$currentLength of $maxLength characters',
              semanticsLabel: 'character count',
            );
          }),
      actions: <Widget>[
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                onPrimary: Colors.greenAccent, primary: Colors.green),
            child: Text(
              "Create Playlist",
              style: KTitle,
            ),
            onPressed: () {
              //String val = _textEditingController.text;
              Navigator.pop(context);
            }),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                onPrimary: Colors.black, primary: Colors.grey),
            child: Text(
              "Cancel",
              style: KHeading3,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
    ),
  );
}
