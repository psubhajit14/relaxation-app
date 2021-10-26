import 'package:flutter/material.dart';
import 'package:relaxation/constants/labels.dart';
import 'package:relaxation/constants/textstyle.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  'Now Playing',
                  style: KHeading2,
                ),
              ),
              Flexible(
                child: Text(
                  'Random Song Name ' + LBullet + 'Some Album ',
                  style: KHeading3,
                ),
              )
            ],
          ),
          PopupMenuButton(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Icon(
                  Icons.more_vert,
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
                  ])
        ],
      ),
    );
  }
}
