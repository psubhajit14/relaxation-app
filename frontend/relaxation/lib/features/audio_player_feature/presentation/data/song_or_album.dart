import 'package:flutter/cupertino.dart';

class SongOrAlbum extends ChangeNotifier {
  bool isSong;

  SongOrAlbum(this.isSong);

  void setSongOrAlbum(bool val) {
    this.isSong = val;
    notifyListeners();
  }
}
