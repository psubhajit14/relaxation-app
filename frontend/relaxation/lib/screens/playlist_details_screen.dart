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
        title: Text("Playlist Details", style: K_Heading1),
      ),
      body: Center(
        child: Text("Playlist Details"),
      ),
    );
  }
}
