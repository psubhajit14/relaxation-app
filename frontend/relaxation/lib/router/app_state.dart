import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  late int _selectedIndex;
  late int? _albumId;
  late int? _playlistId;

  AppState()
      : _selectedIndex = 0,
        _albumId = null,
        _playlistId = null;

  int? get playlistId => _playlistId;

  set playlistId(int? playlistId) {
    _playlistId = playlistId;
    notifyListeners();
  }

  int? get albumId => _albumId;

  set albumId(int? albumId) {
    _albumId = albumId;
    notifyListeners();
  }

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int selectedIndex) {
    _selectedIndex = selectedIndex;
    if (_selectedIndex == 3) {
      playlistId = null;
    } else if (_selectedIndex == 4) {
      albumId = null;
    } else {
      albumId = null;
      playlistId = null;
    }
    notifyListeners();
  }
}
