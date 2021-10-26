import 'package:flutter/material.dart';
import 'package:relaxation/constants/labels.dart';
import 'package:relaxation/constants/textstyle.dart';

class SongList extends StatelessWidget {
  const SongList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ClampingScrollPhysics(),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) => SongTile(index: index),
    );
  }
}

class SongTile extends StatelessWidget {
  const SongTile({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListTile(
        horizontalTitleGap: 2,
        leading: Text('${index + 1} ' + LBullet,
            style: KHeading2.copyWith(color: Colors.white)),
        title: Text(
          'Random Song name ',
          style: KHeading3.copyWith(color: Colors.white),
        ),
        subtitle: Text(
          'Random subttle that may explain the song ',
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
                    child: Text("Second"),
                    value: 2,
                  ),
                ]),
      ),
    );
  }
}
