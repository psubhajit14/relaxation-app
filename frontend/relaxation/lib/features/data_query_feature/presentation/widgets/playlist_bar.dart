import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ndialog/ndialog.dart';
import 'package:provider/provider.dart';
import 'package:relaxation/constants/textstyle.dart';
import 'package:relaxation/features/data_query_feature/domain/entities/playlist_info.dart';
import 'package:relaxation/features/data_query_feature/presentation/bloc/playlist/playlist_info_bloc.dart';

class PlaylistBar extends StatelessWidget {
  const PlaylistBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: BlocBuilder<PlaylistInfoBloc, PlaylistInfoState>(
              builder: (_, state) {
                if (state is PlaylistLoaded) {
                  List<PlaylistInfo> playlist = state.playlistList;
                  return playlist.length > 0
                      ? ListView.builder(
                          physics: ClampingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: playlist.length + 1,
                          itemBuilder: (_, id) {
                            if (id == playlist.length) {
                              return _createPlaylist();
                            }
                            return somePlaylist(playlist: playlist, id: id);
                          })
                      : _createPlaylist();
                } else if (state is PlaylistInfoInitial) {
                  Provider.of<PlaylistInfoBloc>(context)
                      .add(EGetAllPlaylists());
                }
                return _createPlaylist();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class somePlaylist extends StatefulWidget {
  const somePlaylist({Key? key, required this.playlist, required this.id})
      : super(key: key);

  final List<PlaylistInfo> playlist;
  final int id;

  @override
  _somePlaylistState createState() => _somePlaylistState();
}

class _somePlaylistState extends State<somePlaylist> {
  bool isFront = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        setState(() {
          isFront = !isFront;
        });
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(2),
        ),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: SizedBox(
          width: 120,
          child: Center(
            child: isFront
                ? Text(widget.playlist[widget.id].name, style: K_Heading2)
                : IconButton(
                    onPressed: () {
                      print(widget.playlist[widget.id].name);
                      Provider.of<PlaylistInfoBloc>(context, listen: false)
                          .add(ERemovePlaylist(widget.playlist[widget.id]));
                    },
                    icon: Icon(Icons.delete),
                  ),
          ),
        ),
      ),
    );
  }
}

class _createPlaylist extends StatelessWidget {
  const _createPlaylist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController =
        TextEditingController();
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(2),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: InkWell(
        onTap: () async {
          await _showDialog(_textEditingController, context).show(context);
        },
        child: SizedBox(
          width: 120,
          child: Center(child: Icon(Icons.add_box_rounded)),
        ),
      ),
    );
  }

  DialogBackground _showDialog(
      TextEditingController _textEditingController, BuildContext context) {
    return DialogBackground(
      dialog: AlertDialog(
        title: Text(
          "Enter name of new Playlist",
          style: K_Heading2,
        ),
        content: TextField(
            maxLength: 8,
            autofocus: true,
            keyboardType: TextInputType.text,
            onChanged: (val) {
              _textEditingController.text = val;
            },
            onSubmitted: (val) {
              print(val);
              if (val != '') {
                Provider.of<PlaylistInfoBloc>(context, listen: false)
                    .add(ECreatePlaylist(val));
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
              child: Text(
                "Create Playlist",
                style: K_Title,
              ),
              onPressed: () {
                String val = _textEditingController.text;
                Provider.of<PlaylistInfoBloc>(context, listen: false)
                    .add(ECreatePlaylist(val));
                Navigator.pop(context);
              }),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black, primary: Colors.grey),
              child: Text(
                "Cancel",
                style: K_Title,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
