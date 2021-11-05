import 'dart:typed_data';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:relaxation/injection/injection_container.dart';

Widget ArtWorkImage(String id, ResourceType type) {
  final Icon icon = type == ResourceType.SONG
      ? Icon(FontAwesomeIcons.compactDisc)
      : Icon(Icons.list_alt);
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
        errorBuilder: (context, error, stackTrace) => icon,
      );
    },
  );
}
