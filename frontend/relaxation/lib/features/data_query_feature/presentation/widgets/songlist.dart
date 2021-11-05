import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ndialog/ndialog.dart';
import 'package:relaxation/constants/labels.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/song_info.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/home_/state/home_state_bloc/home_state_bloc.dart';
import 'package:relaxation/provider_dependecy.dart';

class SongList extends StatelessWidget {
  const SongList({Key? key, required this.songs, required this.type})
      : super(key: key);
  final List<SongInfo> songs;
  final String type;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      itemCount: songs.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) =>
          SongTile(index: index, song: songs[index]),
    );
  }
}

class SongTile extends StatelessWidget {
  const SongTile({
    Key? key,
    required this.index,
    required this.song,
  }) : super(key: key);
  final int index;
  final SongInfo song;
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
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
            itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("First"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: LabelIcon(song: song),
                    value: 2,
                  ),
                ]),
      ),
    );
  }
}

class LabelIcon extends ConsumerWidget {
  const LabelIcon({Key? key, required this.song, this.onTap}) : super(key: key);
  final void Function()? onTap;
  final SongInfo song;
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return GestureDetector(
      onTap: () async {
        await _showPlaylist(context, watch, song).show(context);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.playlist_add_outlined,
            color: Colors.black,
          ),
          Text(
            "Add Song to Playlist",
            style: KHeading3.copyWith(color: Colors.black),
          )
        ],
      ),
    );
  }
}

DialogBackground _showPlaylist(
    BuildContext context, ScopedReader watch, SongInfo song) {
  final state = watch(homeStateBloc);
  final bloc = watch(homeStateBloc.notifier);
  return DialogBackground(
    color: Colors.black,
    dialog: AlertDialog(
      content: state.maybeWhen(
          data: (data) => ListView.builder(
              itemCount: data.playlists.length + 1,
              itemBuilder: (ctx, idx) => idx == data.playlists.length
                  ? ElevatedButton(
                      onPressed: () {}, child: Text('Create Playlist'))
                  : ElevatedButton(
                      onPressed: () {
                        bloc.add(HomeStateEvent.addSongToPlaylist(
                            data.playlists[idx], song));
                        Navigator.pop(ctx);
                      },
                      child: Text(data.playlists[idx].name))),
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
