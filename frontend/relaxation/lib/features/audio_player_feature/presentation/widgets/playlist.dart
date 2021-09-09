// playlist.dart

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:just_audio/just_audio.dart';
import 'package:relaxation/injection/injection_container.dart';

/// A list of tiles showing all the audio sources added to the audio player.
///
/// Audio sources are displayed with a `ListTile` with a leading image (the
/// artwork), and the title of the audio source.
///
StatefulWidget getSongArtwork(List<IndexedAudioSource> sequence, int i) {
  return (sequence[i].tag.artworkPath == null)
      ? FutureBuilder<Uint8List>(
          future: sl<FlutterAudioQuery>()
              .getArtwork(type: ResourceType.SONG, id: sequence[i].tag.id),
          builder: (_, snapshot) {
            if (snapshot.data == null)
              return Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            // The image bytes
            // You can use Image.memory widget constructor
            // or MemoryImage image provider class to load image from bytes
            // or a different approach.
            return Image.memory(
              snapshot.data!,
              fit: BoxFit.fill,
            );
          })
      : Image.file(
          File(sequence[i].tag.artworkPath),
          fit: BoxFit.fill,
        );
}

class Playlist extends StatelessWidget {
  const Playlist(this._audioPlayer, {Key? key}) : super(key: key);

  final AudioPlayer _audioPlayer;

  Widget build(BuildContext context) {
    return StreamBuilder<SequenceState?>(
      // this was changed
      stream: _audioPlayer.sequenceStateStream,
      builder: (context, snapshot) {
        final state = snapshot.data;
        if (state == null) return CircularProgressIndicator(); // this was added
        final sequence = state.sequence; // this was changed
        return ListView(
          children: [
            for (var i = 0; i < sequence.length; i++)
              ListTile(
                selected: i == state.currentIndex,
                leading: Container(
                  height: 50,
                  width: 50,
                  child: getSongArtwork(sequence, i),
                ),
                title: InkWell(
                    onTap: () {
                      _audioPlayer.seek(Duration.zero, index: i);
                    },
                    child: Text(sequence[i].tag.title)),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ),
          ],
        );
      },
    );
  }
}
