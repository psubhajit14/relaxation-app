import 'package:flutter/material.dart';
import 'package:relaxation/constants/textstyle.dart';

class PlaylistDetailsScreen extends StatelessWidget {
  final int playlistId;

  PlaylistDetailsScreen({required this.playlistId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Playlist Details", style: KHeading1),
      ),
      body: Container(),
    );
  }
}

/// Wrapper for stateful functionality to provide onInit calls in stateles widget
