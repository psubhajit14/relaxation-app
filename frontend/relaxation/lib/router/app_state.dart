import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  int _selectedIndex;
  int? _albumId;
  int? _playlistId;

  AppState(int _selectedIndex) : _selectedIndex = _selectedIndex;

  get selectedIndex => this._selectedIndex;
  get albumId => this._albumId;
  get playlistId => this._playlistId;

  void copyWith({int? selectedIndex, int? albumId, int? playlistId}) {
    setState(
      selectedIndex,
      albumId,
      playlistId,
    );
    notifyListeners();
  }

  void setState(int? selectedIndex, int? albumId, int? playlistId) {
    if (selectedIndex != null) this._selectedIndex = selectedIndex;
    this._albumId = albumId;
    this._playlistId = playlistId;
  }
}
