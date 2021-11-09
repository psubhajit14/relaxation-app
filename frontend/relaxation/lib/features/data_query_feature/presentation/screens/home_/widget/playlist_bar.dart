import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ndialog/ndialog.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/playlist_info.dart';
import 'package:relaxation/features/data_query_feature/presentation/screens/home_/state/home_state_bloc/home_state_bloc.dart';

import '../../../../../../provider_dependecy.dart';

class PlaylistBar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(homeStateBloc);
    return Container(
      color: Colors.transparent,
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: state.maybeWhen(
        orElse: () => CircularProgressIndicator(),
        data: (data) => ListView.builder(
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: data.playlists.length + 1,
          itemBuilder: (context, index) {
            if (index == data.playlists.length)
              return _CreatePlaylist();
            else
              return _PlaylistDetails(playlist: data.playlists[index]);
          },
        ),
      ),
    );
  }
}

class _PlaylistDetails extends HookWidget {
  const _PlaylistDetails({Key? key, required this.playlist}) : super(key: key);
  final PlaylistInfo playlist;
  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isFront = useState(true);
    return InkWell(
      onLongPress: () => isFront.value = !isFront.value,
      child: isFront.value
          ? _CustomCard(
              id: playlist.id,
              label: Center(
                  child: Text(
                playlist.name,
                textAlign: TextAlign.center,
                softWrap: true,
                style: KHeading3.copyWith(color: Colors.black),
              )))
          : _CustomCard(
              id: playlist.id,
              label: Center(
                  child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.black,
                          )))),
            ),
    );
  }
}

class _CreatePlaylist extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController =
        useTextEditingController();
    return _CustomCard(
      onTap: () async {
        await _showDialog(_textEditingController, context).show(context);
      },
      label: Icon(
        Icons.add,
        color: Colors.green,
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  final Widget label;
  const _CustomCard({
    Key? key,
    required this.label,
    this.id,
    this.onTap,
  }) : super(key: key);
  final String? id;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () => context
              .read(appStateProvider)
              .copyWith(playlistId: int.tryParse(id!)),
      child: Container(
        margin: const EdgeInsets.only(left: 8.0),
        width: 150,
        child: Card(
          elevation: 5,
          child: label,
        ),
      ),
    );
  }
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
              String val = _textEditingController.text;
              context
                  .read(homeStateBloc.notifier)
                  .add(HomeStateEvent.createPlaylist(val));
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
