import 'package:flutter/material.dart';
import 'package:relaxation/constants/textstyle.dart';

class AlbumDetailsScreen extends StatelessWidget {
  final int albumId;

  AlbumDetailsScreen({required this.albumId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Album Details", style: KHeading1),
      ),
      body: Container(),
    );
  }
}
