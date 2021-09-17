import 'package:flutter/material.dart';
import 'package:relaxation/constants/textstyle.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: K_Heading1),
      ),
      body: Center(
        child: Text("Setting"),
      ),
    );
  }
}
