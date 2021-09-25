import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:relaxation/constants/textstyle.dart';

class PlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Player", style: KHeading1),
      ),
      body: Container(),
    );
  }
}
